import 'package:get/get.dart';
import 'package:zeus_app/manClothes/sominam.dart';

class FavourCounterController extends GetxController {
  var numOfItem = 0.obs;
  var favList = <AoNamSoMi>[].obs;
  void addFavItemToList(AoNamSoMi namSoMi) {
    favList.add(namSoMi);
    numOfItem++;
  }
}
