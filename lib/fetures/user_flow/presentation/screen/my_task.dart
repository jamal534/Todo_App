import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_tech_task/core/global/custom_text_popins.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/task_details.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
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
        padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
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
            SizedBox(height: 10.h,),
            GestureDetector(
              onTap: (){
                Get.to(TaskDetails());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Stack(
                    children: [
                      Image.asset(
                        height: 170.h,
                        AssetPath.cardImage,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20,right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AssetPath.storeWrite,
                              height: 28,
                              width: 28,
                            ),
                            SizedBox(height: 10),
                            CustomTextPopins(
                              text: "Design Landing Page Header",
                              color: Color(0xFF111827),
                              fontWeight: FontWeight.w500,
                              size: 16,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.",
                              style: GoogleFonts.poppins(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
