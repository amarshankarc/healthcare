import 'package:get/get.dart';
import 'package:healthcare/features/breast_checkup/presentation/controller/breast_chekup_controller.dart';

class BreastCheckupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreastChekupController>(
          () => BreastChekupController(),
    );
  }
}