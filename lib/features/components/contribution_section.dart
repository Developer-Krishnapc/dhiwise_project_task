import 'package:auto_route/auto_route.dart';
import 'package:dhiwise_project/core/extensions/context.dart';
import 'package:dhiwise_project/features/components/custom_contribution_painter.dart';
import 'package:dhiwise_project/features/providers/house_data_provider.dart';
import 'package:dhiwise_project/routes/app_router.dart';
import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:dhiwise_project/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContributionSection extends ConsumerStatefulWidget {
  const ContributionSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ContributionSectionState();
}

class _ContributionSectionState extends ConsumerState<ContributionSection> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(houseDataNotifierProvider);
    return Container(
      width: context.width,
      decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.95),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Contributions',
                  style: AppTextTheme.semiBold15
                      .copyWith(color: AppColor.darkBlue, letterSpacing: 0.1),
                ),
                InkWell(
                  onTap: () {
                    context.pushRoute(const ContributionHistoryRoute());
                  },
                  child: Text(
                    'show history',
                    style: AppTextTheme.semiBold12
                        .copyWith(color: AppColor.grey, letterSpacing: 0.1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomPaint(
              painter: CustomContributionPainter(
                  salaryContribution: (data.totalSaving == 0)
                      ? 0
                      : data.totalSalaryContribution / data.totalSaving,
                  bonusContribution: (data.totalSaving == 0)
                      ? 0
                      : data.totolBonusContribution / data.totalSaving,
                  otherContribution: (data.totalSaving == 0)
                      ? 0
                      : data.totalOtherContribution / data.totalSaving),
              child: const SizedBox(
                height: 20,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColor.lightBlue,
                      radius: 6,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Monthly Salary',
                      style: AppTextTheme.medium12.copyWith(
                          color: AppColor.darkBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(
                      '\$${data.totalSalaryContribution}',
                      style: AppTextTheme.medium12.copyWith(
                          color: AppColor.darkBlue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColor.yellow,
                      radius: 6,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Bonus',
                        style: AppTextTheme.medium12.copyWith(
                            color: AppColor.darkBlue,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                        child: Text(
                      '\$${data.totolBonusContribution}',
                      textAlign: TextAlign.right,
                      style: AppTextTheme.medium12.copyWith(
                          color: AppColor.darkBlue,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColor.limeGreen,
                      radius: 6,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Others',
                        style: AppTextTheme.medium12.copyWith(
                            color: AppColor.darkBlue,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                        child: Text(
                      '\$${data.totalOtherContribution}',
                      textAlign: TextAlign.right,
                      style: AppTextTheme.medium12.copyWith(
                          color: AppColor.darkBlue,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
