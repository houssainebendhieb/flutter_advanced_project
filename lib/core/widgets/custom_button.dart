import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theme/text_styles.dart';
class custom_button extends StatelessWidget {
  final void Function() ontap;
  final String text;
  const custom_button({
    required this.ontap,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF247CFF),
              borderRadius: BorderRadius.circular(25)),
          width: 350,
          height: 60,
          child: Center(
            child: Text(
              text,
              style: styles.textStyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
