import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/utils/routes/route_name.dart';

class SplashUtils {
  static splash(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, RouteName.navigation));
  }
}
