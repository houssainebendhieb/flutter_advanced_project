import "package:flutter/material.dart";
import "package:flutter_complete_project/core/widgets/custom_button.dart";
import "package:flutter_complete_project/feature/login/presentation/widgets/app_description.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class detail_up_stack extends StatelessWidget {
  const detail_up_stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          SizedBox(
            height: 350.h,
          ),
          const app_descrption(),
          const SizedBox(
            height: 25,
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
