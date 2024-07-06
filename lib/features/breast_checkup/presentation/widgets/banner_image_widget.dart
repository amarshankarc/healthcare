import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../config/theme/colors.dart';
import '../../../../core/utils/asset_helper.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .7 / (1 + .7),
      color: InAppColors.ffe4c1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            top: Get.height * .05,
            child: Center(
              child: SvgPicture.asset(
                AssetHelper.backGround,
              ),
            ),
          ),
          Positioned(
            top: Get.height * .06,
            left: 0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
