//
// import 'package:get/get.dart';
//
// class TextFieldController extends GetxController {
//   var isExpanded = false.obs;
//
//   void toggleExpand() {
//     isExpanded.value = !isExpanded.value;
//   }
// }


import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ResizeController extends GetxController {
  var height = 100.0.obs; // TextField initial height
}