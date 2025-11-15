import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/global/customBtn.dart';
import '../../../core/global/custom_text_field.dart';
import '../../../core/global/custom_text_popins.dart';
import '../../../core/routes/app_route.dart';

class SingUpEmail extends StatelessWidget {
  const SingUpEmail({super.key});

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
              text: "Verify Your Email",
              fontWeight: FontWeight.w500,
              color: Color(0xFF111827),
              size: 30.sp,
            ),
            SizedBox(height: 10.h),
            CustomTextPopins(
              text:
              "We'll send a verification code to this email to confirm your account.",
              fontWeight: FontWeight.w400,
              color: Color(0xFF6B7280),
              size: 14.sp,
            ),
            SizedBox(height: 30.h),
            CustomTextPopins(
              text: "Email Address",
              fontWeight: FontWeight.w500,
              size: 14.sp,
              color: Color(0xFF111827),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              hintText: "e.g. kristin.cooper@example.com",
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: Color(0xFF6B7280),
              ),
            ),
            SizedBox(height: 50.h,),
            CustomBtn(text: "Send",
              onPressed: (){

              }, showImage: false,
            ),
            SizedBox(height: 60.h,)
          ],
        ),
      ),
    );
  }
}
