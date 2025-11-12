import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/core/routes/app_route.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';

class AccountSetting extends StatelessWidget {
  AccountSetting({super.key});

  final navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  text: "Account Setting",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoute.changePassword);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
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
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 25,top: 20,bottom: 20),
                            child: Image.asset(AssetPath.lockIcon,fit: BoxFit.fill,height: 25,width: 20,),
                          ),
                          CustomTextPopins(
                            text: "Change Password",
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            size: 14.sp,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(AssetPath.arrow_right,fit: BoxFit.fill,color: Color(0xFF84C000),height: 30.h,width: 20.w,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
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
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 25,top: 20,bottom: 20),
                          child: Image.asset(AssetPath.deleteIcon,fit: BoxFit.fill,height: 25,width: 20,),
                        ),
                        CustomTextPopins(
                          text: "Delete Account",
                          color: Color(0xFFFF0000),
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(AssetPath.arrow_right,fit: BoxFit.fill,color: Color(0xFFFF0000),height: 30.h,width: 20.w,),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
