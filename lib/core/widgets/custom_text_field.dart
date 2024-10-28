import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theme/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final Widget? prefixIcon;

  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.obscuretext,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretext,
      decoration: InputDecoration(
        suffixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: ColorsManager.mainBlue, width: 1.3)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: ColorsManager.lightGrey, width: 1.3)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: ColorsManager.red, width: 1.3)),
      ),
    );
  }
}
