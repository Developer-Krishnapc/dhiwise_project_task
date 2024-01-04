import 'package:dhiwise_project/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navItemsProvider = Provider<List<String>>((ref) {
  return [
    Assets.svg.home.path,
    Assets.svg.refresh.path,
    Assets.svg.stats.path,
    Assets.svg.setting.path,
  ];
});
