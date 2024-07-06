import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:healthcare/features/breast_checkup/presentation/controller/breast_checkup_binding.dart';
import 'package:healthcare/features/breast_checkup/presentation/pages/breast_checkup.dart';

part  'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.breastCheckup;

  static final routes = [
    GetPage(
        name: _Paths.breastCheckUp,
        page: () => const BreastCheckup(),
        binding: BreastCheckupBinding(),
        transitionDuration: const Duration(milliseconds: 0),
        transition: Transition.noTransition),
  ];
}