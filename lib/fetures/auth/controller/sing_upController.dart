import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/service_class/model/network_response.dart';
import '../../../core/service_class/repository/networkCallar.dart';
import '../../../core/service_class/utility/appUrls.dart';


class SignupController extends GetxController {
  // --- Text Editing Controllers ---
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // --- Reactive States ---
  final isLoading = false.obs;
  final agreeTerms = false.obs;

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  // --- Validation and Registration Logic ---
  Future<void> registerUser() async {
    isLoading.value = true;

    final Map<String, String> fields = {
      'firstName': firstNameController.text,
      'lastName': lastNameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'address': addressController.text,
    };

    try {
      final ResponseData response = await NetworkCaller().registerUserMultipart(
        AppUrls.registerUrl,
        fields: fields,
      );
      if (response.isSuccess) {
        Get.offAllNamed(AppRoute.singUpEmail);
      }
    } catch (e) {
      debugPrint("Error : $e");
    } finally {
      isLoading.value = false;
    }
  }
}