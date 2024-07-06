import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/features/breast_checkup/data/models/feeling_model.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/feeling_repository.dart';

import '../data_sources/feeling_localdata_services.dart';

class FeelingsRepositoryImp implements FeelingRepository {
  final FeelingLocalDataServices _feelingLocalDataServices;
  const FeelingsRepositoryImp(this._feelingLocalDataServices);

  @override
  DataState<List<FeelingModel>> getFeeling() {
    try {
      final response = _feelingLocalDataServices.getFeelingList();
      return DataSuccess(response);
    } on Error catch (e) {
      throw DataFailure(e);
    }
  }
}