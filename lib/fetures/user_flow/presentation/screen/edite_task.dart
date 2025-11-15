import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/core/global/customBtn.dart';
import '../../../../core/global/custom_container_filed.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';
import '../../controller/minMaxfield_controller.dart';
import '../widget/expanding_text_filed.dart';

class EditeTask extends StatelessWidget {
  EditeTask({super.key});
  final TextEditingController textController = TextEditingController();
  final ResizeController resizeController = Get.put(ResizeController());
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
                  text: "Edit Task",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextPopins(
                    text: "Task Title",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  CustomContainerFiled(labelText: "e.g. Design Landing Page Header"),
                  SizedBox(height: 20.h),
                  CustomTextPopins(
                    text: "Description",
                    fontWeight: FontWeight.w500,
                    size: 14.r,
                    color: Color(0xFF111827),
                  ),
                  SizedBox(height: 5.h),
                  ResizableTextField(textController: textController),
                  SizedBox(height: 30.h,),
                  CustomBtn(
                      showImage: false,
                      text: "Update Task", onPressed: (){}
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
