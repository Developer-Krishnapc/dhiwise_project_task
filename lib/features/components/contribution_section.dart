import 'package:dhiwise_project/core/extensions/context.dart';
import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:dhiwise_project/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ContributionSection extends StatefulWidget {
  const ContributionSection({super.key});

  @override
  State<ContributionSection> createState() => _ContributionSectionState();
}

class _ContributionSectionState extends State<ContributionSection> {
  @override
  Widget build(BuildContext context) {
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
                Text(
                  'show history',
                  style: AppTextTheme.semiBold12
                      .copyWith(color: AppColor.grey, letterSpacing: 0.1),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
                height: 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: 30,
                          decoration: const BoxDecoration(
                            color: AppColor.lightBlue,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: 30,
                          color: AppColor.yellow,
                          child: Row(children: [
                            Container(
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: AppColor.lightBlue,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                      10,
                                    ),
                                    bottomRight: Radius.circular(
                                      10,
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 30,
                          color: AppColor.limeGreen,
                          child: Row(children: [
                            Container(
                              width: 5,
                              decoration: const BoxDecoration(
                                color: AppColor.yellow,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    10,
                                  ),
                                  bottomRight: Radius.circular(
                                    10,
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
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
                      '\$15000',
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
                      '\$10000',
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
                      '\$5000',
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
