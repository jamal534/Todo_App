import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';

class TremsCondition extends StatelessWidget {
  TremsCondition({super.key});

  final navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      navController.currentIndex.value = 2;
                      Get.back();
                    },
                    child: Image.asset(AssetPath.backIcon),
                  ),
                  SizedBox(width: 40.w),
                  CustomTextPopins(
                    text: "Terms & Condition",
                    size: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextPopins(
                      text: "Terms & Conditions",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions:",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "1. Use of the App",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "This app is designed to help users create, manage, and track personal or professional tasks efficiently. By using the app, you agree to use it responsibly and only for lawful purposes.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "2. Accuracy of Information",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "All tasks, notes, and other information entered by the user are stored securely. While we strive to maintain accurate task management functionality, the app is not responsible for missed deadlines, incorrect entries, or user-generated errors.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "3. User Responsibility",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "Users are solely responsible for managing their tasks, reminders, and any personal or professional outcomes related to the completion or non-completion of tasks created within the app.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "4. Data Collection",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "We respect your privacy. The Task Manager App may collect limited personal data (such as name, email, and usage patterns) solely for improving user experience. No data is shared with third parties without user consent.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "5. Limitation of Liability",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use of the app. The app is a productivity tool and should be used at your discretion.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "6. Third-Party Links",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their data policies or service availability. Use of such services is subject to their respective terms.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 15.h,),
                    CustomTextPopins(
                      text: "7. Changes to Terms",
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: Color(0xFF000000),
                    ),
                    SizedBox(height: 5.h,),
                    CustomTextPopins(
                      text: "We reserve the right to update these Terms & Conditions at any time. Continued use of the app following any changes will constitute your acceptance of those revised terms.",
                      fontWeight: FontWeight.w400,
                      size: 14.sp,
                      color: Color(0xFF2A2A2A),
                    ),
                    SizedBox(height: 30.h,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
