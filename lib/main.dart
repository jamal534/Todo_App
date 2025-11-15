import 'package:flutter/material.dart';
import 'core/bindign/app_binding.dart';
import 'my_app.dart';

void main() {


  //>>>>>>>>>>>>>>>>>>>>>>>>>>> Binding <<<<<<<<<<<<<<<<<<<<<//


  AppBinding().dependencies();

  runApp(const MyApp());
}