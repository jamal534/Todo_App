import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/core/global/custom_text_popins.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/widget/custom_container.dart';

import '../../../navBar/controller/nab_var_controller.dart';

class ProfileDetails extends StatelessWidget {
       ProfileDetails({super.key});

  final navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    navController.currentIndex.value = 2;
                    Get.back();
                  }, child: Image.asset(AssetPath.backIcon)),
                CustomTextPopins(
                  text: "MY Profile",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF84C000),
                ),
                Image.asset(AssetPath.editeProfile),
              ],
            ),
            Image.asset(AssetPath.changeProfile),
            SizedBox(height: 10.h,),
            CustomTextPopins(
              text: "Mojahid",
              size: 20.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFF232323),
            ),
            SizedBox(height: 20.h,),
            CustomContainer(
                image: AssetPath.myProfile,
                text: 'Mojahid Islam',
            ),
            SizedBox(height: 10.h,),
            CustomContainer(
              image: AssetPath.email,
              text: 'Mojahid Islam',
            ),
            SizedBox(height: 10.h,),
            CustomContainer(
              image: AssetPath.location,
              text: 'Mojahid Islam',
            )
          ],
        ),
      ),
    );
  }
}
