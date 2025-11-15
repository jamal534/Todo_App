import 'package:get/get.dart';

import '../../fetures/auth/controller/sing_upController.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => SignupController());

  }
}