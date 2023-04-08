import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/core/utils/routes/route_name.dart';

class SplashUtils {
  static splash(BuildContext context) async {
    const duration = Duration(seconds: 3);
    Future.delayed(
        duration, () => Navigator.pushNamed(context, RouteName.navigation));
  }
}
