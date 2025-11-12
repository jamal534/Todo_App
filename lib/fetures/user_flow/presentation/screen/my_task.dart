import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_tech_task/core/global/custom_text_popins.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
        Row(
          children: [
            Image.asset(AssetPath.userProfile),
            Column(
              children: [
                CustomTextPopins(
                  text: "Hello Mojahid",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                  size: 24.sp,
                ),
                CustomTextPopins(
                  text: "Welcome to Task Manager",
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w400,
                  size: 12.sp,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 10,top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextPopins(
              text: "My Tasks",
              color: Color(0xFF000000),
              fontWeight: FontWeight.w500,
              size: 18.sp,
            ),
          ],
        ),
      ),
    );
  }
}
