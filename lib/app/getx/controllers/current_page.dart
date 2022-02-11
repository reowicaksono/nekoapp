import 'package:get/get.dart';

class CurrentPageController extends GetxController{
  var currentpage = 0;
  var currentpagetabs = 0;
  var currentpagecategories = 0;

  void ChangePage(index){
    this.currentpage = index;
    update();
  }
  void ChangePageTabs(index){
    this.currentpagetabs = index;
    update();
  }
  void ChangePageCategories(index){
    this.currentpagecategories = index;
    update();
  }
}