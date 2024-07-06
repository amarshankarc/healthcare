import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healthcare/core/usecases/space_usecase.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/textstyle.dart';

class StepsDetails extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;
  const StepsDetails(
      {super.key,
      required this.stepNumber,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Step $stepNumber :",
            style: poppins(
                fontWeight: FontWeight.w500,
                textSize: Get.height * .025,
                color: InAppColors.dea96a),
          ),
          Text(
            title,
            style: poppins(
                fontWeight: FontWeight.w600, textSize: Get.height * .04),
          ),
          const Space(
            height: .01,
          ),
          Text(
            description,
            style: poppins(
              fontWeight: FontWeight.w400,
              textSize: Get.height * .022,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
