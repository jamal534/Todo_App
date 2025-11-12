import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spark_tech_task/fetures/auth/presentation/login_screen.dart';
import 'package:spark_tech_task/fetures/auth/presentation/set_new_password.dart';
import 'package:spark_tech_task/fetures/auth/presentation/singUp_screen.dart';
import 'package:spark_tech_task/fetures/auth/presentation/sing_up_email.dart';
import 'package:spark_tech_task/fetures/auth/presentation/sing_up_otp.dart';
import 'package:spark_tech_task/fetures/navBar/presentation/bottom_navBar.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/changePassword.dart';
import '../../fetures/onbording/screen/onbording_screen.dart';
import '../../fetures/splash/screen/splash_screen.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String onbordingScreen = "/onbordingScreen";
  static String singUpScreen = "/singUpScreen";
  static String loginScreen = "/loginScreen";
  static String singUpEmail = "/singUpEmail";
  static String singUpOtp = "/singUpOtp";
  static String setNewPassword = "/setNewPassword";
  static String bottomNavbar = "/bottomNavbar";
  static String profileDetails = "/profileDetails";
  static String changePassword = "/changePassword";


  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: onbordingScreen, page: () => OnboardingView()),
    GetPage(name: singUpScreen, page: () => SingupScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: singUpEmail, page: () => SingUpEmail()),
    GetPage(name: singUpOtp, page: () => SingUpOtp()),
    GetPage(name: setNewPassword, page: () => SetNewPassword()),
    GetPage(name: bottomNavbar, page: () => NavBar()),
    GetPage(name: changePassword, page: () => Changepassword()),
    // GetPage(name: profileDetails, page: () => ProfileDetailsScreen()),
  ];
}