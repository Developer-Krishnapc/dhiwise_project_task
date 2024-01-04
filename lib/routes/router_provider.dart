import 'package:dhiwise_project/routes/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<AppRouter> router(RouterRef ref) {
  return AppRouter();
}
