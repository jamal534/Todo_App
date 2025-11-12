import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/global/customBtn.dart';
import '../../../core/global/custom_password_field.dart';
import '../../../core/global/custom_text_field.dart';
import '../../../core/global/custom_text_popins.dart';
import '../../../core/routes/app_route.dart';

class LoginScreen extends StatelessWidget {

   LoginScreen({super.key});
  RxBool agreeTerms = false.obs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            reverse:  true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150.h,),
                CustomTextPopins(
                  text: "Welcome Back!",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF111827),
                  size: 30.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextPopins(
                  text:
                      "Stay productive and take control of your tasks.",
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
                Obx(() => Row(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: agreeTerms.value,
                        onChanged: (val) {
                          agreeTerms.value = val ?? false;
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Color(0xFF22C55E);
                          }
                          return Colors.transparent;
                        }),
                        side: MaterialStateBorderSide.resolveWith((states) {
                          return BorderSide(
                            color: Color(0xFF22C55E),
                            width: 1,
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Remember me",
                        style: GoogleFonts.poppins(
                          color: Color(0xFF344054),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFF64748B),
                        thickness: 1.5,
                        endIndent: 20,
                      ),
                    ),
                    CustomTextPopins(
                      fontWeight: FontWeight.w600,
                      size: 14.sp,
                      color: Color(0xFF0A0E23), text: 'OR',
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFF64748B),
                        thickness: 1.5,
                        indent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Don’t have an Account?  ",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF344054),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: "Sing Up",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF84C000),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoute.singUpScreen);
                              },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                CustomBtn(text: "Login",
                  onPressed: (){
                  // Get.toNamed(AppRoute.)
                  }, showImage: false,
                ),
                SizedBox(height: 60.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
