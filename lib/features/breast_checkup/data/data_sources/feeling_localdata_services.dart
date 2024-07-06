import 'package:healthcare/core/utils/asset_helper.dart';
import 'package:healthcare/features/breast_checkup/data/models/feeling_model.dart';
import 'package:healthcare/features/breast_checkup/domain/entities/feelings.dart';

class FeelingLocalDataServices {

 List<FeelingModel> getFeelingList()  {
    return data;
  }
}
List<FeelingModel> data = [
  FeelingModel(
    title: "Everything Is Fine",
    image: AssetHelper.everyThingIsFine,
    isSelected: false,
  ),
  FeelingModel(
    title: "Engorgement",
    image: AssetHelper.engorgement,
    isSelected: false,
  ),
  FeelingModel(
    title: "Lump",
    image: AssetHelper.lump,
    isSelected: false,
  ),
  FeelingModel(
    title: "Cracked Nipples",
    image: AssetHelper.crackedNipples,
    isSelected: false,
  ),
  FeelingModel(
    title: "Skin Redness",
    image: AssetHelper.skinRedness,
    isSelected: false,
  ),
  FeelingModel(
    title: "Dimple",
    image: AssetHelper.dimple,
    isSelected: false,
  ),
  FeelingModel(
    title: "Nipple Discharge",
    image: AssetHelper.nippleDischarge,
    isSelected: false,
  ),
  FeelingModel(
    title: "Pain",
    image: AssetHelper.pain,
    isSelected: false,
  ),
];List<FeelingEntity> da = [
  FeelingEntity(
    title: "Everything Is Fine",
    image: AssetHelper.everyThingIsFine,
    isSelected: false,
  ),

];