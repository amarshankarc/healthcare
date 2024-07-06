import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:healthcare/core/usecases/space_usecase.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/textstyle.dart';
import '../../../../core/utils/asset_helper.dart';
import '../../domain/entities/feelings.dart';

class BottomButton extends StatelessWidget {
  final void Function(int) onFeelingTap;
  final RxList<FeelingEntity> feelings;

  final RxList<int> selectedIndex;

  const BottomButton(
      {super.key,
      required this.feelings,
      required this.selectedIndex,
      required this.onFeelingTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: Get.width * .05, right: Get.width * .05),
          child: GestureDetector(
            onTap: () {
              modelSheet(
                  context: context,
                  onFeelingTap: onFeelingTap,
                  feelings: feelings,
                  selectedIndex: selectedIndex);
            },
            child: Container(
              height: Get.height * .065,
              width: Get.width * .75,
              decoration: BoxDecoration(
                  color: InAppColors.dea96a,
                  borderRadius: BorderRadius.circular(60)),
              child: Center(
                child: Text(
                  "I Feel...",
                  style: poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      textSize: Get.height * .025),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: InAppColors.dea96a,
            size: 30,
          ),
        ),
      ],
    );
  }
}

Future<void> modelSheet({
  required BuildContext context,
  required void Function(int) onFeelingTap,
  required RxList<FeelingEntity> feelings,
  required RxList<int> selectedIndex,
}) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: Get.width,
          height: Get.height * 1 / (1 + .7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Get.width * .45, right: Get.width * .45, top: 8),
                child: Divider(
                  thickness: Get.height * .005,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "How do your Breast Feel ?",
                  style: poppins(
                      textSize: Get.height * .024, fontWeight: FontWeight.w600),
                ),
              ),
              const Space(
                height: .01,
              ),
              Expanded(
                  child: Obx(
                () => GridView.builder(
                    itemCount: feelings.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          onFeelingTap(index);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: SvgPicture.asset(
                                      feelings[index].image!,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      top: 0,
                                      child: Obx(
                                        () => Visibility(
                                          visible:
                                              selectedIndex.contains(index),
                                          child: SvgPicture.asset(
                                            AssetHelper.selectedMarker,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Obx(
                                () => Text(
                                  feelings[index].title!,
                                  style: poppins(
                                      color:
                                          selectedIndex.contains(index) == true
                                              ? InAppColors.dea96a
                                              : Colors.black),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ))
            ],
          ),
        );
      });
}
