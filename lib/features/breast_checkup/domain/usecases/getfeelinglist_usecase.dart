import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/core/usecases/usecases.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/feelings.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/feeling_repository.dart';

class GetFeelingListUseCase implements UseCases<DataState<List<FeelingEntity>>,void>{
  final FeelingRepository _feelingRepository;
  const GetFeelingListUseCase(this._feelingRepository);

  @override
  call() {
   return  _feelingRepository.getFeeling();
  }

}