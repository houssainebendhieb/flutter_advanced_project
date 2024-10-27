import 'package:flutter/material.dart';
import 'package:flutter_complete_project/feature/login/presentation/widgets/detail_up_stack.dart';
import 'package:flutter_complete_project/feature/login/presentation/widgets/text_and_logo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextAndLogo(),

            Stack(
              children: [
                Container(
                  height: 500,
                  child: Center(
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        height: 400,
                        child: Row(
                          children: [
                            Container(
                                height: 200,
                                width: 150.h,
                                child: Image.asset(
                                  "assets/images/vector2.png",
                                  fit: BoxFit.cover,
                                )),
                            Container(
                                height: 200,
                                width: 150.h,
                                child: Image.asset(
                                  "assets/images/vector.png",
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: SizedBox(
                    width: 443,
                    height: 500,
                    child: Image.asset("assets/images/Image.png"),
                  ),
                ),
                const SizedBox(
                  height: 700,
                ),
                Center(child: detail_up_stack()),
              ],
            ),

            //   detail_up_stack()
          ],
        ),
      ),
    );
  }
}
