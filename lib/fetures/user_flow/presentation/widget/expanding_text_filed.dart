import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/minMaxfield_controller.dart';
import 'package:spark_tech_task/core/utils/asset_path.dart';

class ResizableTextField extends StatelessWidget {
  final ResizeController resizeController = Get.put(ResizeController());
  final TextEditingController textController;

  ResizableTextField({super.key, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: double.infinity,
        height: resizeController.height.value,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 35,
              offset: const Offset(6, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            TextField(
              maxLines: null,
              expands: true,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF6B7280),
              ),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7FFEF),
                hintText:
                "e.g. Include logo, navigation, and CTA button with brand color",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10, right: 40, bottom: 10),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  double newHeight =
                      resizeController.height.value + details.delta.dy;
                  if (newHeight > 60 && newHeight < 400) {
                    resizeController.height.value = newHeight;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AssetPath.resizeIcon,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
