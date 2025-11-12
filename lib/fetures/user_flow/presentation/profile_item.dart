// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ProfileItemCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final IconData? icon;
//   final VoidCallback? onTap;
//
//   const ProfileItemCard({
//     super.key,
//     required this.image,
//     required this.title,
//     this.icon,
//     this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           height: 60.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.r),
//             boxShadow: [
//               BoxShadow(
//                 color: const Color(0x1A000000),
//                 blurRadius: 24,
//                 offset: const Offset(0, 10),
//               ),
//             ],
//             color: Colors.white,
//           ),
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(width: 12.w),
//                     Image.asset(
//                       image,
//                       height: 26.h,
//                     ),
//                     SizedBox(width: 12.w),
//                     Text(
//                       title,
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14.sp,
//                         color: const Color(0xFF111827),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 if (icon != null)
//                   Padding(
//                     padding: EdgeInsets.only(right: 12.w),
//                     child: Icon(
//                       icon,
//                       size: 18.sp,
//                       color: const Color(0xFF84C000),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
