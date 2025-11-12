import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/global/custom_text_popins.dart';
import '../../../../core/utils/asset_path.dart';
import '../../../navBar/controller/nab_var_controller.dart';


class HelpSupportScreen extends StatelessWidget {
  HelpSupportScreen({super.key});

  final navController = Get.find<NavController>();

  final RxList<bool> _isExpandedList = List.generate(5, (index) => false).obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  text: "Help/Support",
                  size: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CustomTextPopins(
                text: "FAQS",
                size: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2A2A2A),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                itemCount: _isExpandedList.length,
                itemBuilder: (context, index) {
                  return Obx(() => Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1A000000),
                              blurRadius: 5,
                              offset: Offset(10, 10),
                            ),
                          ],
                          color: Colors.white
                      ),
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 18.w),
                        collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide.none,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide.none,
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          child: Text(
                            index == 0
                                ? 'How do I create a new task?'
                                : 'How can I view task details?',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF1A202C),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        initiallyExpanded: _isExpandedList[index],
                        onExpansionChanged: (bool expanded) {
                          _isExpandedList[index] = expanded;
                        },
                        trailing: Icon(
                          _isExpandedList[index]
                              ? Icons.keyboard_arrow_down_outlined
                              : Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF4EB323),
                        ),
                        children: [
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            thickness: 2,
                            color: Color(0x33718096),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Color(0xFF718096),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 130,left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextPopins(text: "Need More Help?",size: 16,fontWeight: FontWeight.w500,color: Color(0xFF2A2A2A),),
                  SizedBox(height: 20.h,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1A000000),
                            blurRadius: 24,
                            offset: Offset(10, 10),
                          ),
                        ],
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10,bottom: 20),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AssetPath.songMail),
                              SizedBox(width: 20.w,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CustomTextPopins(
                                            text: "Mail Us:",
                                          fontWeight: FontWeight.w500,
                                          size: 12.h,
                                          color: Color(0xFF2A2A2A),
                                        ),
                                        Text(
                                          "(",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.sp,
                                            color: const Color(0xFF2A2A2A),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            final Uri emailUri = Uri(
                                              scheme: 'mailto',
                                              path: 'support@taskmanagerapp.com',
                                            );
                                            await launchUrl(emailUri);
                                          },
                                          child: Text(
                                            "support@taskmanagerapp.com",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10.sp,
                                              color: const Color(0xFF84C000),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ")",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.sp,
                                            color: const Color(0xFF2A2A2A),
                                          ),
                                        ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h,),
                                  CustomTextPopins(
                                    text: "Our help desk is available 24/7 to",
                                    fontWeight: FontWeight.w400,
                                    size: 12,
                                    color: Color(0xFF555555),
                                  ),
                                  CustomTextPopins(
                                    text: "support your workflow.",
                                    fontWeight: FontWeight.w400,
                                    size: 12,
                                    color: Color(0xFF555555),
                                  )
                            ],
                          ),
      
                        ],
                      ),
                    ),
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