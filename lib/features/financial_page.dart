import 'package:auto_route/auto_route.dart';
import 'package:dhiwise_project/core/extensions/context.dart';
import 'package:dhiwise_project/features/components/contribution_section.dart';
import 'package:dhiwise_project/features/components/financial_metric_section.dart';
import 'package:dhiwise_project/features/providers/house_data_provider.dart';
import 'package:dhiwise_project/gen/assets.gen.dart';
import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:dhiwise_project/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final pageViewPageProvider = StateProvider<int>((ref) {
  return 0;
});
final animationStateProvider = StateProvider<double>((ref) {
  return 0.0;
});

@RoutePage()
class FinancialPage extends ConsumerStatefulWidget {
  const FinancialPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FinancialPageState();
}

class _FinancialPageState extends ConsumerState<FinancialPage>
    with SingleTickerProviderStateMixin {
  PageController? pageViewController;
  late AnimationController controller;
  late Animation<double> alpha;
  @override
  void initState() {
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    pageViewController = PageController();
    pageViewController?.addListener(() {
      ref.read(pageViewPageProvider.notifier).state =
          pageViewController?.page?.toInt() ?? 0;
    });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(houseDataNotifierProvider.notifier).fetchDataFromServer();
      final data = ref.read(houseDataNotifierProvider);
      alpha = Tween<double>(
              begin: 0.0, end: (data.totalSaving * 100) / data.targetHousePrice)
          .animate(controller);

      alpha.addListener(() {
        ref.read(animationStateProvider.notifier).state = alpha.value;
      });
      controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(houseDataNotifierProvider);
    final numberFormat = NumberFormat(
      "##,##,###.##",
    );
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              // height: context.height,
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              width: context.width,
              decoration: const BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Buy a dream house',
                    style:
                        AppTextTheme.semiBold24.copyWith(color: AppColor.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 250,
                    child: PageView.builder(
                      controller: pageViewController,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Center(
                              child: Consumer(
                                builder: (context, ref, child) {
                                  final data =
                                      ref.watch(animationStateProvider) / 100;
                                  return SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: CircularProgressIndicator(
                                        strokeCap: StrokeCap.round,
                                        value: data,
                                        strokeWidth: 5,
                                        color: AppColor.white,
                                        backgroundColor: AppColor.grey,
                                      ));
                                },
                              ),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Assets.svg.home
                                      .svg(color: AppColor.white, height: 80),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '\$${numberFormat.format(data.totalSaving)}',
                                    style: AppTextTheme.semiBold22
                                        .copyWith(color: AppColor.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('You Saved',
                                      style: AppTextTheme.medium14
                                          .copyWith(color: AppColor.grey))
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const FinancialMetricSection(),
                  const ContributionSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
