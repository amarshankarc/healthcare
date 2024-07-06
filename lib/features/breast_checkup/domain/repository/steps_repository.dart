import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/steps.dart';

abstract class StepsRepository{
  DataState<List<StepsEntity>> getSteps();
}