import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_tech_task/core/global/custom_text_popins.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String text;
  const CustomContainer({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000),
                blurRadius: 24,
                offset: Offset(10, 10),
              ),
            ],
            color: Colors.white
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10),
              child: Image.asset(image,height: 30,width: 30,fit: BoxFit.cover,),
            ),
            SizedBox(width: 10.w),
            Container(
              height: 25.h,
              child: const VerticalDivider(
                color: Color(0xFF84C000),
                thickness: 1,
                width: 16,
              ),
            ),
            SizedBox(width: 10.w),
            CustomTextPopins(
              text: text,
              fontWeight: FontWeight.w400,
              size: 14.sp,
              color: Color(0xFF000000),
            ),
          ],
        ),
      ),
    );
  }
}
