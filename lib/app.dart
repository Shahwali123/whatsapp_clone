import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/res/theme/main_theme.dart';
import 'package:whatsapp_clone/core/utils/routes/route.dart';
import 'package:whatsapp_clone/core/utils/routes/route_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const double _designWidth = 375;
  static const double _designHeight = 815;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(_designWidth, _designHeight),
      builder: (context, child) => MaterialApp(
        initialRoute: RouteName.splash,
        theme: AppThemes.mainTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
