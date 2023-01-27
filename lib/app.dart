import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/utils/routes/route.dart';
import 'package:whatsapp_clone/utils/routes/route_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.splash,
      theme: ThemeData(
        backgroundColor: AppColors.background,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
