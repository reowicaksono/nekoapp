import 'package:get/get.dart';

class FavouriteColor extends GetxController{
  var isFavouriteRed = false.obs;

  changeFavouriteColor(){
    isFavouriteRed.value = !isFavouriteRed.value;
  }
}