// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:spark_tech_task/core/routes/app_route.dart';
// import '../../../core/global/customBtn.dart';
// import '../../../core/utils/asset_path.dart';
// import '../controller/onbording_controller.dart';
//
// class OnboardingView extends StatelessWidget {
//   final OnboardingController onboardingController =
//   Get.put(OnboardingController());
//
//   OnboardingView({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFAFBF9),
//       body: SafeArea(
//         child: Obx(
//               () => Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         onboardingController.previousPage();
//                       },
//                       child: Image.asset(
//                         AssetPath.arrow_left,
//                       ),
//                     ),
//                     Spacer(),
//                     InkWell(
//                       onTap: (){
//                         Get.toNamed(AppRoute.singUpScreen);
//                         // Get.toNamed(AppRoute.setNewPassword);
//                         // Get.toNamed(AppRoute.bottomNavbar);
//                       },
//                       child: Text("Skip",style: GoogleFonts.poppins(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF84C000)
//                       ),),
//                     ),
//                   ],
//                 ),
//               ),
//                   SizedBox(height: 20.h,),
//                   Container(
//                     width: 280.w,
//                     height: 280.h,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           onboardingController.onboardingData[
//                           onboardingController.currentIndex.value]
//                           ['image']!,
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: Get.height * 0.09 / 0.2,
//                     left: 0,
//                     right: 0,
//                     child: Column(
//                       children: [
//                         Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(32.r),
//                               topRight: Radius.circular(32.r),
//                             ),
//                           ),
//                           // clipBehavior: Clip.antiAlias,
//                           padding: EdgeInsets.all(24),
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 30.h,
//                               ),
//                               Text(
//                                 onboardingController.onboardingData[
//                                 onboardingController.currentIndex.value]
//                                 ['title']!,
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.poppins(
//                                   color: Color(0xFF111827),
//                                   fontSize: 20.sp,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: 20.h),
//                               Text(
//                                 onboardingController.onboardingData[
//                                 onboardingController.currentIndex.value]
//                                 ['description']!,
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 12.sp,
//                                   color: Color(0xFF6B7280),
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               SizedBox(height: 40),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: List.generate(
//                                   onboardingController.onboardingData.length,
//                                       (i) => Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 4.0),
//                                     child:
//                                     Container(
//                                       height: 6.h,
//                                       width: i == onboardingController.currentIndex.value ? 28.w : 6.w,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20.r),
//                                         color: i ==
//                                             onboardingController
//                                                 .currentIndex.value
//                                             ? Color(0xFF84C000)
//                                             : Color(0xFFD9D9D9),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(left: 12,right: 12),
//                 child: CustomBtn(
//                   borderRadius: BorderRadius.circular(6.r),
//                   height: 18.h,
//                   text: onboardingController.currentIndex.value ==
//                       onboardingController.onboardingData.length - 1
//                       ? "Continue"
//                       : "Next",
//                   textFontWeight: FontWeight.w600,
//                   textColor: Color(0xFFFFFFFF),
//                   backgroundColor: Color(0xFF84C000),
//                   onPressed: () {
//                     onboardingController.nextPage();
//                   },
//                 ),
//               ),
//               SizedBox(height: 50.h,),
//                   ],
//                 ),
//               ),
//         ),
//     );
//   }
// }


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_tech_task/core/routes/app_route.dart';
import '../../../core/global/customBtn.dart';
import '../../../core/utils/asset_path.dart';
import '../controller/onbording_controller.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController onboardingController =
  Get.put(OnboardingController());

  OnboardingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // We calculate a stack height to ensure the Stack has bounded height inside the Column.
    // This value is adjusted to fit the image (280h) and the content box underneath.
    final double stackHeight = Get.height * 0.65;

    return Scaffold(
      backgroundColor: Color(0xFFFAFBF9),
      body: SafeArea(
        child: Obx(
              () =>
              Column(
                children: [
                  // --- Header Row (Skip/Back) ---
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            onboardingController.previousPage();
                          },
                          child: Image.asset(
                            AssetPath.arrow_left,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoute.singUpScreen);
                            // Get.toNamed(AppRoute.setNewPassword);
                            // Get.toNamed(AppRoute.bottomNavbar);
                          },
                          child: Text("Skip", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF84C000)
                          ),),
                        ),
                      ],
                    ),
                  ),
                  // --- Fixed the Layout Error Here: Wrapping Image and Positioned with Stack ---
                  SizedBox(
                    height: stackHeight,
                    // Stack must have a defined height when inside a Column
                    child: Stack(
                      children: [
                        // 1. Image Container (Base Layer)
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 280.w,
                            height: 280.h,
                            margin: EdgeInsets.only(top: 20.h),
                            // Add a little margin from the top
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  onboardingController.onboardingData[
                                  onboardingController.currentIndex.value]
                                  ['image']!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // 2. Content Box (Positioned Layer)
                        Positioned( // Now correctly positioned inside a Stack
                          top: 250.h,
                          // Positioned to slightly overlap the bottom of the 280h image
                          left: 0,
                          right: 0,
                          child: Column( // This inner Column is fine
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(32.r),
                                    topRight: Radius.circular(32.r),
                                  ),
                                ),
                                padding: EdgeInsets.all(24.r),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Text(
                                      onboardingController.onboardingData[
                                      onboardingController.currentIndex.value]
                                      ['title']!,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF111827),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Text(
                                      onboardingController.onboardingData[
                                      onboardingController.currentIndex.value]
                                      ['description']!,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Color(0xFF6B7280),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 40.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: List.generate(
                                        onboardingController.onboardingData
                                            .length,
                                            (i) =>
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0.w),
                                              child:
                                              Container(
                                                height: 6.h,
                                                width: i == onboardingController
                                                    .currentIndex.value
                                                    ? 28.w
                                                    : 6.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(20.r),
                                                  color: i ==
                                                      onboardingController
                                                          .currentIndex.value
                                                      ? Color(0xFF84C000)
                                                      : Color(0xFFD9D9D9),
                                                ),
                                              ),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // --- Button Section ---
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: CustomBtn(
                      borderRadius: BorderRadius.circular(6.r),
                      height: 48.h,
                      text: onboardingController.currentIndex.value ==
                          onboardingController.onboardingData.length - 1
                          ? "Continue"
                          : "Next",
                      textFontWeight: FontWeight.w600,
                      textColor: Color(0xFFFFFFFF),
                      backgroundColor: Color(0xFF84C000),
                      onPressed: () {
                        onboardingController.nextPage();
                      },
                    ),
                  ),
                  SizedBox(height: 50.h,),
                ],
              ),
        ),
      ),
    );
  }
  }