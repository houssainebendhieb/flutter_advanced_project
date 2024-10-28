import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theme/colors_manager.dart';
import 'package:flutter_complete_project/core/theme/text_styles.dart';
import 'package:flutter_complete_project/core/widgets/custom_button.dart';
import 'package:flutter_complete_project/core/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Welcome Back",
                style: styles.textStyle32.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: styles.textStyle16.copyWith(color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 20.h,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(hintText: "Email", obscuretext: false),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        obscuretext: obscureText,
                        prefixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: obscureText == false
                              ? const Icon(
                                  Icons.visibility,
                                  color: ColorsManager.mainBlue,
                                )
                              : const Icon(Icons.visibility_off,
                                  color: ColorsManager.mainBlue),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 30.h,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forget Password",
                    style: styles.textStyle13RegularBlue,
                  )),
              SizedBox(
                height: 40.h,
              ),
              custom_button(ontap: () {}, text: "Sign in "),
              SizedBox(
                height: 200.h,
              ),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "By loggin you agree to our ",
                          style: styles.textStyle11Regular),
                      TextSpan(
                          text: "Terms & Conditions ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "and ",
                          style: styles.textStyle11Regular
                              .copyWith(fontSize: 15, color: Colors.black)),
                      TextSpan(
                          text: "\nPrivacyPolicy ",
                          style: styles.textStyle11Regular
                              .copyWith(fontSize: 15, color: Colors.black)),
                    ])),
              ),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already hava an account yet?",
                          style: styles.textStyle11Regular
                              .copyWith(color: Colors.black)),
                      TextSpan(
                          text: "Sign Up", style: styles.textStyle13RegularBlue)
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
