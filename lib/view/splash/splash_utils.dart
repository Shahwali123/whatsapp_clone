import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/utils/routes/route_name.dart';

class SplashUtils {
  // Splash Logic
  static showSplash(BuildContext context) async {
    const duration = Duration(seconds: 3);
    Future.delayed(
        duration, () => Navigator.pushNamed(context, RouteName.navigation));
  }
}
