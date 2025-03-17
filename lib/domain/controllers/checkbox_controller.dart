
import 'package:get/get.dart';

class CheckBoxController  extends GetxController{
  var isChecked = false.obs;
  var isvalues = false.obs;
 void toggleCheckbox(bool? value) {
    isChecked.value = value ?? !isChecked.value; // Toggle the first checkbox
  }

  void toggleValues(bool? values) {
    isvalues.value = values ?? !isvalues.value; // Toggle the second checkbox
  }
}
