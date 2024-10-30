import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:flutter_complete_project/feature/login/presentation/login_screen.dart';
import 'package:flutter_complete_project/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) {
          return const OnBoardingScreen();
        });

      case Routes.login:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          );
        });
    }

    return MaterialPageRoute(builder: (context) {
      return const Text("not found 404");
    });
  }
}
