import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/edite_task.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';

class TaskDetails extends StatelessWidget {
  TaskDetails({super.key});

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
                  text: "Tasks Details",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
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
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                    top: 13,
                    right: 13,
                    bottom: 13,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AssetPath.taskTile),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextPopins(
                                text: "Task Title",
                                size: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF242424),
                              ),
                              SizedBox(height: 10.h),
                              CustomTextPopins(
                                text: "Design Landing Page Header",
                                fontWeight: FontWeight.w500,
                                size: 12.sp,
                                color: Color(0xFF6B7280),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xFF84C000),
                        thickness: 0.30,
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AssetPath.taskTile),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextPopins(
                                  text: "Task Description",
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF242424),
                                ),
                                SizedBox(height: 10.h),
                                CustomTextPopins(
                                  text:
                                      "Create a clean, responsive header section for the landing page. Include logo, navigation menu, search bar, and a primary call-to-action button. Ensure mobile responsiveness and use the brand green",
                                  fontWeight: FontWeight.w500,
                                  size: 12.sp,
                                  color: Color(0xFF6B7280),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xFF84C000),
                        thickness: 0.30,
                        height: 40.h,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.w,
                                color: Color(0xFFEF4444)
                              ),
                              color: Color(0xFFFEF2F2),
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Image.asset(AssetPath.task_Delete_Icon),
                                  SizedBox(width: 10.w,),
                                  CustomTextPopins(
                                    text: "Delete Task",
                                    fontWeight: FontWeight.w500,
                                    size: 12.sp,
                                    color: Color(0xFF111827),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          GestureDetector(
                            onTap: (){
                              Get.to(EditeTask());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.w,
                                    color: Color(0xFF84C000)
                                ),
                                color: Color(0xFFF7FFEF),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Image.asset(AssetPath.task_edite_icon),
                                    SizedBox(width: 10.w,),
                                    CustomTextPopins(
                                      text: "Edit Task",
                                      fontWeight: FontWeight.w500,
                                      size: 12.sp,
                                      color: Color(0xFF111827),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
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
