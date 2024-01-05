import 'package:auto_route/auto_route.dart';
import 'package:dhiwise_project/features/contribution_history_page.dart';
import 'package:dhiwise_project/features/financial_page.dart';
import 'package:dhiwise_project/features/home.dart';
import 'package:dhiwise_project/features/main_page.dart';
import 'package:dhiwise_project/features/settings_page.dart';
import 'package:dhiwise_project/features/sync_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(page: SettingsRoute.page),
          AutoRoute(page: FinancialRoute.page),
          AutoRoute(
            page: SyncRoute.page,
          ),
          AutoRoute(
            page: HomeRoute.page,
          ),
        ]),
        AutoRoute(page: ContributionHistoryRoute.page),
      ];
}
