import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../../core/global/customBtn.dart';
import '../../../core/global/custom_text_popins.dart';

class SingUpOtp extends StatelessWidget {
  const SingUpOtp({super.key});


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

            Pinput(
              length: 6,
              keyboardType: TextInputType.number,
              // controller: signUpController.pinput,
              // validator: FormValidation.validatePin,
              defaultPinTheme: PinTheme(
                height: 60.h,
                width: 60.w,
                margin: EdgeInsets.symmetric(horizontal: 4),
                textStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6B7280),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Color(0xFFF7FFEF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 24,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
              ),
              onCompleted: (value) {
                // otpController.otpController.text = value;
                // errorMessage.value = '';
              },
              onChanged: (value) {
                if (value.isNotEmpty) {
                  // errorMessage.value = '';
                }
              },
            ),

            SizedBox(height: 50.h),
            CustomBtn(
              text: "Send",
              onPressed: () {
                // Get.toNamed(AppRoute.)
              },
              showImage: false,
            ),
            SizedBox(height: 60.h),
          ],
        ),
      ),
    );
  }
}

