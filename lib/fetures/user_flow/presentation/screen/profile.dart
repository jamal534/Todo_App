import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/account_setting.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/privacyPolyci.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/profile_details.dart';
import 'package:spark_tech_task/fetures/user_flow/presentation/screen/trems&cndition.dart';
import '../../../navBar/controller/nab_var_controller.dart';
import 'Help_screen.dart';


class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  // final navController = Get.find<NavController>();
  // final UserProfileController controller = Get.put(UserProfileController());

  final List<Map<String, dynamic>> proFile = [
    {'image': AssetPath.myProfile, 'title': 'My ProFile', 'icon': Icons.arrow_forward_ios_rounded,},
    {'image': AssetPath.setting, 'title': 'Account Setting', 'icon': Icons.arrow_forward_ios_rounded},
    {'image': AssetPath.terms, 'title': 'Terms & Condition', 'icon': Icons.arrow_forward_ios_rounded},
    {'image': AssetPath.privacy, 'title': 'Privacy policy','icon': Icons.arrow_forward_ios_rounded},
    {'image': AssetPath.help, 'title': 'Help/Support','icon': Icons.arrow_forward_ios_rounded},
    {'image': AssetPath.logout, 'title': 'logout'},
  ];



  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AssetPath.racTangle,
                ),
                Positioned(
                  top: 120,
                  child: Image.asset(
                    AssetPath.changeProfile,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h,),
            // Profile Menu Items
            Expanded(
              child: ListView.separated(
                itemCount: proFile.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Get.to(() => ProfileDetails());
                          break;
                        case 1:
                          Get.to(() => AccountSetting());
                          break;
                        case 2:
                          Get.to(() => TremsCondition());
                          break;
                        case 3:
                          Get.to(() => Privacypolyci());
                          break;
                          case 4:
                          Get.to(() => HelpSupportScreen());
                          break;
                        case 5:
                          break;
                        default:
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 40,
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
                        child: ListTile(
                          leading: Image.asset(
                            proFile[index]['image'],
                            height: 30.h,
                          ),
                          title: Text(
                            proFile[index]['title'],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Color(0xFF111827),
                            ),
                          ),
                          trailing: proFile[index]['icon'] != null
                              ? Icon(
                            proFile[index]['icon'],
                            color: Color(0xFF84C000),
                            size: 20.sp,
                          )
                              : SizedBox(),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 15,
                    endIndent: 10,
                    color: Colors.white,
                    height: 1,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}