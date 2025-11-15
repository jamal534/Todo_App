import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainerFiled extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;

  const CustomContainerFiled({
    super.key,
    required this.labelText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFF6B7280),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF7FFEF),
          border: InputBorder.none,
          hintText: labelText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B7280),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: Color(0xFFF7FFEF),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: Color(0xFFF7FFEF), // focused হলে নীল দেখাবে
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
