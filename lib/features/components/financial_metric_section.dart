import 'package:dhiwise_project/core/extensions/context.dart';
import 'package:dhiwise_project/features/financial_page.dart';
import 'package:dhiwise_project/features/providers/house_data_provider.dart';
import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:dhiwise_project/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class FinancialMetricSection extends ConsumerStatefulWidget {
  const FinancialMetricSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FinancialMetricSectionState();
}

class _FinancialMetricSectionState
    extends ConsumerState<FinancialMetricSection> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(houseDataNotifierProvider);
    final numberFormat = NumberFormat(
      "##,##,###",
    );
    return Column(
      children: [
        Consumer(
          builder: (context, ref, child) {
            final page = ref.watch(pageViewPageProvider);
            return SizedBox(
              width: context.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      3,
                      (index) => Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: (page == index)
                                      ? AppColor.white
                                      : AppColor.grey,
                                ),
                                height: 8,
                                width: 8,
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ))
                ],
              ),
            );
          },
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: context.widthByPercent(75),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Goal',
                    style:
                        AppTextTheme.semiBold16.copyWith(color: AppColor.white),
                  ),
                  Text(
                    (data.targetDate != '')
                        ? 'by ${DateFormat('MMM yyyy').format(DateFormat('yyyy-MM-dd').parse(data.targetDate))}'
                        : '',
                    style:
                        AppTextTheme.semiBold14.copyWith(color: AppColor.grey),
                  )
                ],
              ),
              Text(
                '\$${numberFormat.format(data.targetHousePrice)}',
                style: AppTextTheme.semiBold18.copyWith(color: AppColor.white),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
          decoration: BoxDecoration(
              color: AppColor.lightBlue,
              borderRadius: BorderRadius.circular(10)),
          width: context.widthByPercent(85),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Need more saving',
                    style:
                        AppTextTheme.semiBold14.copyWith(color: AppColor.white),
                  ),
                  Text(
                      '\$${numberFormat.format(data.targetHousePrice - data.totalSaving)}',
                      style: AppTextTheme.semiBold14
                          .copyWith(color: AppColor.white)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Monthly saving projection',
                      style: AppTextTheme.semiBold14
                          .copyWith(color: AppColor.white)),
                  Text('\$${numberFormat.format(data.monthlyProjection)}',
                      style: AppTextTheme.semiBold14
                          .copyWith(color: AppColor.white)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
