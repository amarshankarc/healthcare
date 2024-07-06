abstract class AssetHelper {
  // svgImage is Funtion returns path of svgFile
  static String svgImage(
      {String? svg, Folder? folder = Folder.breast_checkup}) {
    return 'asset/${folder!.name.toString()}/$svg';
  }

//====================[Svg]=========================

  // breastCheckup Assets
  // Common Assets
  static get backGround => svgImage(svg: "backGround.svg");

  static get selectedMarker => svgImage(svg: "selectedMarker.svg");

  // Category Assets
  static get everyThingIsFine => svgImage(svg: "Category_EveryThingIsFine.svg");

  static get crackedNipples => svgImage(svg: "Category_CrackedNipples.svg");

  static get dimple => svgImage(svg: "Category_Dimple.svg");

  static get engorgement => svgImage(svg: "Category_Engorgement.svg");

  static get lump => svgImage(svg: "Category_Lump.svg");

  static get nippleDischarge => svgImage(svg: "Category_NippleDischarge.svg");

  static get pain => svgImage(svg: "Category_Pain.svg");

  static get skinRedness => svgImage(svg: "Category_SkinRedness.svg");

//end =>breastCheckup Assets
}

enum Folder { breast_checkup }
