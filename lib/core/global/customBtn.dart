import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';
import '../utils/app_colors.dart';


class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.width,
    this.borderRadius,
    this.textColor,
    this.textFontWeight,
    this.height,
    this.showImage = true,
  });

  final String text;
  final void Function() onPressed;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Color? textColor;
  final FontWeight? textFontWeight;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      // height: height ?? 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: backgroundColor ?? AppColors.btnColor,
          padding: EdgeInsets.symmetric(vertical: height?.h ?? 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: textColor ?? AppColors.whiteColor,
                fontSize: 14.sp,
                fontWeight: textFontWeight ?? FontWeight.w600,
              ),
            ),
            // Image.asset(AssetPath.arrow_right)
            Visibility(
              visible: showImage,
              child: Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Image.asset(AssetPath.arrow_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}