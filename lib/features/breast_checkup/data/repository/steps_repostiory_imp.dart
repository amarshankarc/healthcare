import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/features/breast_checkup/data/data_sources/steps_localdata_services.dart';
import 'package:healthcare/features/breast_checkup/data/models/steps_model.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/steps.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/steps_repository.dart';

class StepsRepostioryImp implements StepsRepository {
  final StepsLocaldataServices _localDataServices;

  const StepsRepostioryImp(this._localDataServices);


  @override
  DataState<List<StepsEntity>> getSteps() {
    try {
      final response = _localDataServices.getSteps();
      return DataSuccess(response);
    } on Error catch (e) {
      throw DataFailure(e);
    }
  }
}

