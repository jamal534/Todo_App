import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/core/global/customBtn.dart';
import '../../../../core/global/custom_password_field.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';

class Changepassword extends StatelessWidget {
     Changepassword({super.key});

  final navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    navController.currentIndex.value = 2;
                    Get.back();
                  },
                  child: Image.asset(AssetPath.backIcon),
                ),
                SizedBox(width: 40.w),
                CustomTextPopins(
                  text: "Change Password",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextPopins(
                  text: "Type PassWord",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomPasswordField(
                  hints: "••••••••",
                ),
                SizedBox(height: 20.h,),
                CustomTextPopins(
                  text: "New PassWord",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomPasswordField(
                  hints: "••••••••",
                ),
                SizedBox(height: 20,),
                CustomTextPopins(
                  text: "New Confirm PassWord",
                  fontWeight: FontWeight.w500,
                  size: 14.sp,
                  color: Color(0xFF111827),
                ),
                SizedBox(height: 10.h,),
                CustomPasswordField(
                  hints: "••••••••",
                ),
                SizedBox(height: 15.h,),
                CustomBtn(text: "Update", onPressed: (){},
                  showImage: false,
                )
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
