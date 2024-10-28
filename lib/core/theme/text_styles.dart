import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/font_helpers.dart';
import 'package:flutter_complete_project/core/theme/colors_manager.dart';

class styles {
  static TextStyle textStyle10 =
      const TextStyle(fontSize: 12, color: Color(0xFF757575));
  static TextStyle textStyle32 =
      const TextStyle(fontSize: 32, color: Color(0xFF247CFF));
  static TextStyle textStyle16 =
      const TextStyle(fontSize: 16, color: Colors.black);
  static TextStyle textStyle13RegularBlue = const TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 13,
      fontWeight: FontHelpers.regular);
  static TextStyle textStyle11Regular = const TextStyle(
      color: ColorsManager.lightGrey,
      fontSize: 11,
      fontWeight: FontHelpers.regular);
}
