import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Space extends StatelessWidget {
  final  double? height;
  final double? width;
  const Space( {super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: height == null ? 0 : Get.height * height!,
        width: width == null ? 0 : Get.width * width!,
      );
  }
}
