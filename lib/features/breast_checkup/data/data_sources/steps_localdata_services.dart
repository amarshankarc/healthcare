import 'package:healthcare/features/breast_checkup/data/models/steps_model.dart';

class StepsLocaldataServices {
  List<StepsModel> getSteps() {
    return data;
  }
}

List<StepsModel> data = [
  const StepsModel(
      titile: "Look",
      stepNumber: 1,
      description:
          "Stand in front of a mirror with your shoulder stright and your arms on your hips and look up to your breast in the mirror")
];
