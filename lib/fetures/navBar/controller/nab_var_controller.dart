import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}


// import 'package:get/get.dart';
//
// class NavController extends GetxController {
//   var currentIndex = 0.obs;
//   updateIndex(int value) => currentIndex.value = value;
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../../user_flow/presentation/screen/profile.dart';
//
// class NavController extends GetxController {
//   RxInt currentIndex = 0.obs;
//   Rx<Widget> profileScreen = ProfileScreen().obs;
//
//   // navbar index update
//   void updateIndex(int index) {
//     currentIndex.value = index;
//     if (index != 2) profileScreen.value = ProfileScreen();
//   }
//
//   // profile tab এর ভিতরে page change
//   void openProfileDetails() {
//     profileScreen.value = ProfileDetailsScreen();
//   }
//
//   void openAccountSetting() {
//     profileScreen.value = AccountSettingScreen();
//   }
//
//   void openChangePassword() {
//     profileScreen.value = ChangePasswordScreen();
//   }
//
//   void openEditProfile() {
//     profileScreen.value = EditProfileScreen();
//   }
//
//   void openTerms() {
//     profileScreen.value = TermsConditionScreen();
//   }
//
//   void openPrivacy() {
//     profileScreen.value = PrivacyScreen();
//   }
//
//   void openHelp() {
//     profileScreen.value = HelpScreen();
//   }
//
//   // back to main profile
//   void backToProfileMain() {
//     profileScreen.value = ProfileScreen();
//   }
// }
