import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_tech_task/core/global/customBtn.dart';
import 'package:spark_tech_task/core/global/custom_password_field.dart';
import 'package:spark_tech_task/core/global/custom_text_field.dart';
import 'package:spark_tech_task/core/global/custom_text_popins.dart';
import '../../../core/routes/app_route.dart';
import '../controller/sing_upController.dart';

class SignupScreen extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                CustomTextPopins(
                  text: "Create Your Account",
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF111827),
                  size: 30.sp,
                ),
                SizedBox(height: 10.h,),
                CustomTextPopins(
                  text:
                  "Join Task Manager today — organize better, work smarter, and stay in control of your day.",
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF6B7280),
                  size: 14.sp,
                ),
                SizedBox(height: 20.h,),
                // --- First Name Field ---
                CustomTextPopins(
                  text: "First Name",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomTextField(
                  textEditingController: controller.firstNameController,
                  // controller: controller.firstNameController,
                  hintText: "e.g. Kristin ",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                SizedBox(height: 20.h,),
                // --- Last Name Field ---
                CustomTextPopins(
                  text: "Last Name",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomTextField(
                  textEditingController: controller.lastNameController, // 3. Binding Controller
                  hintText: "e.g. Cooper",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                SizedBox(height: 20.h,),
                // --- Email Field ---
                CustomTextPopins(
                  text: "Email Address",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomTextField(
                  textEditingController: controller.emailController,
                  hintText: "e.g. kristin.cooper@example.com",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                SizedBox(height: 20.h,),
                // --- Address Field ---
                CustomTextPopins(
                  text: "Address",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomTextField(
                  textEditingController: controller.addressController,
                  hintText: "e.g. 1234 Elm Street, Springfield, IL",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                SizedBox(height: 20.h,),
                // --- Password Field ---
                CustomTextPopins(
                  text: "PassWord",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomPasswordField(
                  controller: controller.passwordController,
                  hints: "••••••••",
                ),
                SizedBox(height: 20.h,),
                // --- Confirm Password Field ---
                CustomTextPopins(
                  text: "Confirm password",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: const Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomPasswordField(
                  controller: controller.confirmPasswordController,
                  hints: "••••••••",
                ),
                // --- Terms & Conditions Checkbox ---
                Obx(() => Row(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        value: controller.agreeTerms.value,
                        onChanged: (val) {
                          controller.agreeTerms.value = val ?? false; // Update controller state
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xFF22C55E);
                          }
                          return Colors.transparent;
                        }),
                        side: MaterialStateBorderSide.resolveWith((states) {
                          return const BorderSide(
                            color: Color(0xFF22C55E),
                            width: 1,
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "I agree to the Terms & Conditions and Privacy Policy.",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF344054),
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
                        color: const Color(0xFF64748B),
                        thickness: 1.5,
                        endIndent: 20,
                      ),
                    ),
                    CustomTextPopins(
                      fontWeight: FontWeight.w600,
                      size: 14.sp,
                      color: const Color(0xFF0A0E23), text: 'OR',
                    ),
                    Expanded(
                      child: Divider(
                        color: const Color(0xFF64748B),
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
                            text: "Log In",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF84C000),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoute.loginScreen);
                              },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Obx(() => CustomBtn(
                  text: controller.isLoading.value ? "Loading..." : "Continue",
                  onPressed: controller.isLoading.value ? () {} : controller.registerUser,
                  showImage: false,
                )),
                SizedBox(height: 60.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}