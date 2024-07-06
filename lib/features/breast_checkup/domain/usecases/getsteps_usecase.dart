import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/core/usecases/usecases.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/steps.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/steps_repository.dart';

class GetStepsUseCase implements UseCases<DataState<List<StepsEntity>>, void> {
  final StepsRepository _stepsRepository;

  const GetStepsUseCase(this._stepsRepository);

  @override
  DataState<List<StepsEntity>> call() {
    return _stepsRepository.getSteps();
  }
}
