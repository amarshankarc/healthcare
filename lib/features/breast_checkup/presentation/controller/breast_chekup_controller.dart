import 'package:get/get.dart';
import 'package:healthcare/core/resources/data_state.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/feelings.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/steps.dart';
import 'package:healthcare/features/breast_checkup/domain/usecases/getfeelinglist_usecase.dart';
import 'package:healthcare/features/breast_checkup/domain/usecases/getsteps_usecase.dart';
import 'package:healthcare/injection.dart';

class BreastChekupController extends GetxController {

  RxList<FeelingEntity> feelings = <FeelingEntity>[].obs;
  RxList<int> selectedIndex = <int>[].obs;
  // on Feelings getting vlaue is true
  RxBool gettingFeeling= false.obs;

  // on Feelings Error values is true
  RxBool errOnFeeling= false.obs;


  RxList<StepsEntity> steps = <StepsEntity>[].obs;

  // on stepData getting vlaue is true
  RxBool gettingSteps= false.obs;

  // on stepsData Error values is true
  RxBool errOnSteps= false.obs;



  //getSteps
  void getSteps(){
    GetStepsUseCase useCase = dependencies();
    final state= useCase();


    if(state is DataSuccess && state.data!.isNotEmpty){
      //Success Case
      steps.value = state.data!;
      gettingSteps.value= false;
    }else{
      // Error Case
      errOnSteps.value = true;
    }
  }


  //getFeelings
  void getFeelings(){
    GetFeelingListUseCase useCase = dependencies();
    final state= useCase();


    if(state is DataSuccess && state.data!.isNotEmpty){
      //Success Case
      feelings.value = state.data!;
      gettingFeeling.value= false;
    }else{
      // Error Case
      errOnFeeling.value = true;
    }
  }


  void onFeelingTap(int index){
    if(selectedIndex.contains(index)){
      selectedIndex.remove(index);
      feelings.refresh();
    }else{
      selectedIndex.add(index);
      feelings.refresh();
    };

  }

   @override
  void onInit() {
    getFeelings();
    getSteps();
    super.onInit();
  }
}
