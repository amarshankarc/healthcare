import 'package:get_it/get_it.dart';
import 'package:healthcare/features/breast_checkup/data/data_sources/feeling_localdata_services.dart';
import 'package:healthcare/features/breast_checkup/data/data_sources/steps_localdata_services.dart';
import 'package:healthcare/features/breast_checkup/data/repository/feelings_repository_imp.dart';
import 'package:healthcare/features/breast_checkup/data/repository/steps_repostiory_imp.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/feeling_repository.dart';
import 'package:healthcare/features/breast_checkup/domain/repository/steps_repository.dart';
import 'package:healthcare/features/breast_checkup/domain/usecases/getfeelinglist_usecase.dart';

import 'features/breast_checkup/domain/usecases/getsteps_usecase.dart';

final dependencies = GetIt.instance;

Future<void> initializeDependencies() async {
  //=======[feelings] Injection==========
  dependencies.registerSingleton<FeelingLocalDataServices>(FeelingLocalDataServices());
  dependencies.registerSingleton<FeelingRepository>(FeelingsRepositoryImp(dependencies()));
  dependencies.registerSingleton<GetFeelingListUseCase>(
      GetFeelingListUseCase(dependencies()));

  //=======[steps] Injection==========

  dependencies
      .registerSingleton<StepsLocaldataServices>(StepsLocaldataServices());
  dependencies
      .registerSingleton<StepsRepository>(StepsRepostioryImp(dependencies()));
  dependencies.registerSingleton<GetStepsUseCase>(
      GetStepsUseCase(dependencies()));
}
