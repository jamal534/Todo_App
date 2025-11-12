import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordField extends StatelessWidget {
  RxBool isVisible = true.obs;

  final String hints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  CustomPasswordField({
    super.key,
    required this.hints,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 24,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: isVisible.value,
          decoration: InputDecoration(
            hintText: hints,
            hintStyle: GoogleFonts.poppins(
              color: Color(0xff1F2C37),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: Color(0xFFF7FFEF),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide.none,
            ),
            suffixIcon: InkWell(
              onTap: () => isVisible.value = !isVisible.value,
              child: Icon(
                isVisible.value
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Color(0xFF718096),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
