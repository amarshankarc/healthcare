import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/feelings.dart';

abstract class FeelingRepository {
   DataState<List<FeelingEntity>> getFeeling();
}
