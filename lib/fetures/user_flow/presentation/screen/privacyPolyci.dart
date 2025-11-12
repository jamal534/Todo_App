import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';
import 'package:url_launcher/url_launcher.dart';



class Privacypolyci extends StatelessWidget {
   Privacypolyci({super.key});

  final navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        text: "Privacy policy",
                        size: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextPopins(
                          text: "TPrivacy Policy – Task Manager App",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "WYour privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "1. Information Collection",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "2. Local Storage",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app's features like scheduling, notifications, and user customization.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "3. No Tracking",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "4. Static Data Display",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "5. Third-Party Services",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "6. Data Security",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 15.h,),
                        CustomTextPopins(
                          text: "7. Policy Updates",
                          fontWeight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(height: 5.h,),
                        CustomTextPopins(
                          text: "This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),
                        SizedBox(height: 30.h,),
                        CustomTextPopins(
                          text: "f you have any questions or concerns regarding privacy, please contact us at ",
                          fontWeight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF2A2A2A),
                        ),

                        InkWell(
                          onTap: () async {
                            final Uri phoneUri = Uri(scheme: 'mailto', path: "support@taskmanagerapp.com");
                            await launchUrl(phoneUri);
                          },
                          child: Text("support@taskmanagerapp.com",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Color(0xFF2A2A2A),
                            decoration: TextDecoration.underline,
                          ),
                          ),
                        ),
                        SizedBox(height: 30.h,),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
