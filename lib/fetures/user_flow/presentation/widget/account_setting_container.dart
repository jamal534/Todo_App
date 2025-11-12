// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:spark_tech_task/core/global/custom_text_popins.dart';
//
// class AccountSettingContainer extends StatelessWidget {
//   final String image;
//   final String text;
//   final IconData? icon;
//   final Color? iconColor;
//
//   const AccountSettingContainer({
//     super.key,
//     required this.image,
//     required this.text,
//     this.icon,
//     this.iconColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 12, right: 12),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.r),
//           boxShadow: const [
//             BoxShadow(
//               color: Color(0x1A000000),
//               blurRadius: 24,
//               offset: Offset(10, 10),
//             ),
//           ],
//           color: Colors.white,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Image.asset(
//                     image,
//                     height: 30.h,
//                     width: 30.w,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(width: 10.w),
//                   CustomTextPopins(
//                     text: text,
//                     fontWeight: FontWeight.w400,
//                     size: 14.sp,
//                     color: const Color(0xFF000000),
//                   ),
//                 ],
//               ),
//               if (icon != null)
//                 Icon(
//                   icon,
//                   color: iconColor ?? const Color(0xFF84C000),
//                   size: 20.sp,
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
