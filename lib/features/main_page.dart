import 'package:auto_route/auto_route.dart';
import 'package:dhiwise_project/features/components/bottom_nav_bar.dart';
import 'package:dhiwise_project/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavBar(
        selected: tabsRouter.activeIndex,
        onTabChanged: tabsRouter.setActiveIndex,
      ),
      routes: const [
        HomeRoute(),
        SyncRoute(),
        FinancialRoute(),
        SettingsRoute(),
      ],
    );
  }
}
