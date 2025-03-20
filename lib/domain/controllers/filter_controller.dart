import 'package:get/get.dart';

class FilterController extends GetxController{
  var showFilterContainer = false.obs;
  void togglefiltercontainer(){
    showFilterContainer.value = !showFilterContainer.value;
  }
}