import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/app_routes.dart';
import 'package:flutter_complete_project/core/theme/colors_manager.dart';
import 'package:flutter_complete_project/doc_app.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: ColorsManager.mainBlue),
    home: const DocApp(),
    onGenerateRoute: AppRoutes().generateRoute,
  ));
}
