import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/feature/login/presentation/login_screen.dart';
import 'package:flutter_complete_project/feature/onboarding/presentation/onboarding_screen.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) {
          return const OnBoardingScreen();
        });

      case Routes.login:
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        });
    }

    return MaterialPageRoute(builder: (context) {
      return const Text("not found 404");
    });
  }
}
