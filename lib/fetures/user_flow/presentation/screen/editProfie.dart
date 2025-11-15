import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/global/customBtn.dart';
import '../../../../core/global/custom_container_filed.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';

class Editprofie extends StatelessWidget {
      Editprofie({super.key});

      final TextEditingController textController = TextEditingController();
      final navController = Get.find<NavController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  text: "Edit Profile ",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetPath.changeUserProfile,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  top: 80,
                  left: 50,
                  right: 0,
                  child: Image.asset(
                    AssetPath.camaraIcon,
                    fit: BoxFit.cover,
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextPopins(
                    text: "First Name",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainerFiled(labelText: "e.g. Kristin "),
                  SizedBox(height: 20.h),
                  CustomTextPopins(
                    text: "Last Name",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainerFiled(labelText: "e.g. Cooper"),
                  SizedBox(height: 20.h),
                  CustomTextPopins(
                    text: "Email Address",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainerFiled(labelText: "e.g. kristin.cooper@example.com"),
                  SizedBox(height: 20.h),
                  CustomTextPopins(
                    text: "Address",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainerFiled(labelText: "e.g. 1234 Elm Street, Springfield, IL"),
                  SizedBox(height: 30.h,),
                  CustomBtn(
                      showImage: false,
                      text: "SaveTask", onPressed: (){}
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
