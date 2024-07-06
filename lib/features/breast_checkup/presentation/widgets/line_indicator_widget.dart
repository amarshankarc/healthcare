import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcare/config/theme/colors.dart';

class LineIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final Color? color;

  const LineIndicator(
      {super.key,
      required this.itemCount,
      required this.currentIndex,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        itemCount,
        (index) {
          final Color lineColor =
              index == currentIndex ? InAppColors.dea96a : InAppColors.dea96a50;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: Get.width / (itemCount + 2),
              height: Get.height * .006,
              decoration: BoxDecoration(
                color: lineColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          );
        },
      ),
    );
  }
}
