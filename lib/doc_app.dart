import 'package:flutter/material.dart';
import 'package:flutter_complete_project/feature/login/presentation/widgets/detail_up_stack.dart';
import 'package:flutter_complete_project/feature/login/presentation/widgets/text_and_logo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_complete_project/core/theme/text_styles.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            TextAndLogo(),
            SizedBox(
              height: 20.h,
            ),
            Stack(
              children: [
                Container(
                    child: Image.asset(
                  "assets/images/group.png",
                  fit: BoxFit.cover,
                )),
                Container(
                  foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, Colors.white.withOpacity(0.0)],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          stops: const [0.14, 0.4])),
                  child: Image.asset("assets/images/Image.png"),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 30,
                    child: Center(
                      child: Text(
                        "Best Doctor\nAppointment App",
                        textAlign: TextAlign.center,
                        style: styles.textStyle32
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    )),
              ],
            ),
            detail_up_stack()
          ],
        ),
      ),
    );
  }
}
