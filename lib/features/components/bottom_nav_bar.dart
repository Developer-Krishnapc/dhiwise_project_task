import 'package:dhiwise_project/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

class BottomNavBar extends ConsumerWidget {
  BottomNavBar({
    super.key,
    required this.selected,
    required this.onTabChanged,
  });
  final int selected;
  final void Function(int index) onTabChanged;
  final List<String> svgPathList = [
    Assets.svg.home.path,
    Assets.svg.refresh.path,
    Assets.svg.stats.path,
    Assets.svg.setting.path,
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColor.white,
          AppColor.lightBlue.withOpacity(0.1),
          AppColor.lightBlue.withOpacity(0.2)
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
      ),
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(bottom: 7),
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(svgPathList.length, (index) {
            final nav = svgPathList[index];
            final active = selected == index;
            return Expanded(
              child: InkWell(
                onTap: () => onTabChanged(index),
                child: SizedBox(
                    width: 30,
                    height: 30,
                    child: SvgPicture.asset(
                      nav,
                      // fit: BoxFit.fitHeight,
                      color: active ? AppColor.darkBlue : AppColor.grey,
                    )),
              ),
            );
          }),
        ),
      ),
    );
  }
}
