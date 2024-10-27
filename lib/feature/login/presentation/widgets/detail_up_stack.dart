import "package:flutter/material.dart";
import "package:flutter_complete_project/core/theme/text_styles.dart";
import "package:flutter_complete_project/core/widgets/custom_button.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class detail_up_stack extends StatelessWidget {
  const detail_up_stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: styles.textStyle10
                .copyWith(color: Colors.black45, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.h,
          ),
          custom_button(
            ontap: () {},
            text: "Get Started",
          )
        ],
      ),
    );
  }
}
