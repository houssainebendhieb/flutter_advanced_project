import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theme/text_styles.dart';

class app_descrption extends StatelessWidget {
  const app_descrption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        child: Column(
          children: [
            Text(
              "Best Doctor",
              style: styles.textStyle32.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Appointment App",
              style: styles.textStyle32.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Manage and scheduler all of your medical appointments easily",
              style: styles.textStyle10,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "with Docdoc to get a new experience",
              style: styles.textStyle10,
            )
          ],
        ),
      ),
    );
  }
}
