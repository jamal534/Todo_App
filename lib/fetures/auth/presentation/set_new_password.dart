import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/global/customBtn.dart';
import '../../../core/global/custom_password_field.dart';
import '../../../core/global/custom_text_popins.dart';


class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextPopins(
              text: "Set Your New Password",
              fontWeight: FontWeight.w500,
              color: Color(0xFF111827),
              size: 30.sp,
            ),
            SizedBox(height: 10.h),
            CustomTextPopins(
              text: "Create a secure password to protect your account and get started seamlessly!",
              fontWeight: FontWeight.w400,
              color: Color(0xFF6B7280),
              size: 14.sp,
            ),
            SizedBox(height: 30.h,),
            CustomTextPopins(
              text: "PassWord",
              fontWeight: FontWeight.w500,
              size: 14.sp,
              color: Color(0xFF111827),
            ),
            SizedBox(height: 10.h,),
            CustomPasswordField(
              hints: "••••••••",
            ),
            SizedBox(height: 30.h,),
            CustomTextPopins(
              text: "PassWord",
              fontWeight: FontWeight.w500,
              size: 14.sp,
              color: Color(0xFF111827),
            ),
            SizedBox(height: 10.h,),
            CustomPasswordField(
              hints: "••••••••",
            ),
            SizedBox(height: 20.h,),
            CustomBtn(text: "continue",
              onPressed: (){
                // Get.toNamed(AppRoute.)
              }, showImage: false,
            ),
          ],
        ),
      ),
    );
  }
}
