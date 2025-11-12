import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({
    super.key,
    this.textEditingController,
    this.textInputAction = TextInputAction.next,
    this.inputTextStyle = const TextStyle(),
    this.textAlignVertical = TextAlignVertical.center,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.maxLength,
    this.validator,
    this.hintText,
    this.labelText = '',
    this.hintStyle = const TextStyle(),
    this.fillColor = const Color(0xFFF7FFEF),
    this.suffixIconColor,
    this.suffixIcon,
    // this.borderRadius = 8,
    this.onChanged,
    this.onFieldSubmitted,
    this.isPassword = false,
    // this.isSubfixIcon = false,
    this.onTapClick,
    this.readOnly = false,
    this.width,
    // this.height,
    this.isEnabled,
    this.containerClick,
    this.contentPadding,
  });

  final TextEditingController? textEditingController;
  final TextInputAction textInputAction;
  final TextStyle? inputTextStyle;
  final TextAlignVertical? textAlignVertical;
  final TextAlign textAlign;
  final int? maxLines;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final String labelText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  // final double borderRadius;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool isPassword;
  // final bool isPrefixIcon;
  final VoidCallback? onTapClick;
  final bool readOnly;
  // final double? height;
  final double? width;
  final bool? isEnabled;
  final void Function()? containerClick;
  final EdgeInsetsGeometry? contentPadding;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: containerClick,
      child: Container(
        width: width ?? double.infinity,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 24,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: TextFormField(
            onTap: onTapClick,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            readOnly: readOnly,
            controller: textEditingController,
            textInputAction: textInputAction,
            style: inputTextStyle,
            maxLines: maxLines,
            maxLength: maxLength,
            validator: validator,
            textAlign: TextAlign.start,
            enabled: isEnabled ?? true,
            decoration: InputDecoration(
              filled: true,
              errorMaxLines: 2,
              hintText: hintText,
              contentPadding: contentPadding ?? EdgeInsets.all(16.r),
              hintStyle: hintStyle,
              fillColor: fillColor,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      );
  }
}