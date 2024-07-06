import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcare/core/usecases/space_usecase.dart';
import 'package:healthcare/features/breast_checkup/presentation/controller/breast_chekup_controller.dart';
import 'package:healthcare/features/breast_checkup/presentation/widgets/banner_image_widget.dart';
import 'package:healthcare/features/breast_checkup/presentation/widgets/bottom_button.dart';
import 'package:healthcare/features/breast_checkup/presentation/widgets/line_indicator_widget.dart';
import 'package:healthcare/features/breast_checkup/presentation/widgets/steps_details.dart';

class BreastCheckup extends GetView<BreastChekupController> {
  const BreastCheckup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BannerImage(),
          Container(
            height: Get.height * 1 / (1 + .7),
            color: Colors.white,
            child: Column(
              children: [
                const Space(
                  height: .02,
                ),
                const LineIndicator(itemCount: 5, currentIndex: 0),
                const Space(
                  height: .02,
                ),
                StepsDetails(
                    stepNumber: "${controller.steps.first.stepNumber}",
                    title: controller.steps.first.titile!,
                    description: controller.steps.first.description!),
                const Spacer(),
                BottomButton(
                  feelings: controller.feelings,
                  selectedIndex: controller.selectedIndex,
                  onFeelingTap: controller.onFeelingTap,
                ),
                const Space(
                  height: .03,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
