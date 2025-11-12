import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';
import '../../user_flow/presentation/screen/add_task.dart';
import '../../user_flow/presentation/screen/my_task.dart';
import '../../user_flow/presentation/screen/profile.dart';
import '../controller/nab_var_controller.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  final navController = Get.put(NavController());

  final screens = [
    MyTask(),
    AddTask(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: screens[navController.currentIndex.value],
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          style: TabStyle.react,
          activeColor: Colors.black,
          color: Color(0xFF1E293B),
          curveSize: 80,
          height: 80,
          items: [
            TabItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: navController.currentIndex.value == 0
                      ? Color(0xFF84C000)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: navController.currentIndex.value == 0
                    ? Image.asset(AssetPath.homeWhiteImage)
                    : Image.asset(AssetPath.homeImage),
                height: 22.h,
                width: 24.w,
              ),
              title: navController.currentIndex.value == 0 ? '' : 'My Task',
            ),
            TabItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: navController.currentIndex.value == 1
                      ? Color(0xFF84C000)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: navController.currentIndex.value == 1
                    ? Image.asset(AssetPath.addWhiteImage,)
                    : Image.asset(AssetPath.addBlackImage,),
                height: 22.h,
                width: 24.w,
              ),
              title: navController.currentIndex.value == 1 ? '' : 'Add Task',
            ),
            TabItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: navController.currentIndex.value == 2
                      ? Color(0xFF84C000)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: navController.currentIndex.value == 2
                    ? Image.asset(AssetPath.blackProfile,)
                    : Image.asset(AssetPath.whiteProfile,),
              ),
              title: navController.currentIndex.value == 2 ? '' : 'Profile',
            ),
          ],
          initialActiveIndex: navController.currentIndex.value,
          onTap: (index) => navController.updateIndex(index),
        )

    ));
  }
}