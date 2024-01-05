import 'package:auto_route/auto_route.dart';
import 'package:dhiwise_project/core/extensions/context.dart';
import 'package:dhiwise_project/features/providers/house_data_provider.dart';
import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:dhiwise_project/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ContributionHistoryPage extends ConsumerWidget {
  const ContributionHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(houseDataNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightBlue,
        iconTheme: const IconThemeData(color: AppColor.white),
        title: Text(
          'Contributions',
          style: AppTextTheme.semiBold18.copyWith(color: AppColor.white),
        ),
      ),
      body: ListView.builder(
        itemCount: data.monthlyContribution.length,
        itemBuilder: (context, index) {
          final contribution = data.monthlyContribution[index];
          return Container(
            margin:
                const EdgeInsets.only(bottom: 10, top: 5, left: 10, right: 10),
            decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.grey.withOpacity(0.12),
                    blurRadius: 2,
                    spreadRadius: 3,
                    offset: const Offset(2, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            width: context.width,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Row(children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: AppColor.green.withOpacity(0.7),
                child: const Icon(
                  Icons.add,
                  color: AppColor.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$${contribution.amount}    ',
                                style: AppTextTheme.semiBold16
                                    .copyWith(color: AppColor.lightBlue),
                              ),
                              Text(
                                contribution.type,
                                style: AppTextTheme.semiBold12.copyWith(
                                    color: AppColor.yellow.withOpacity(0.8)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      DateFormat('dd/MMM/yy').format(contribution.dateTime!),
                      style:
                          AppTextTheme.medium14.copyWith(color: AppColor.grey),
                    )
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
