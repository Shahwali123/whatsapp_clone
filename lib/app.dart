import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/theme/main_theme.dart';
import 'package:whatsapp_clone/utils/routes/route.dart';
import 'package:whatsapp_clone/utils/routes/route_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.splash,
      theme: AppThemes.mainTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
