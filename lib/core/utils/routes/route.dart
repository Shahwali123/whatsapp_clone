import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/utils/routes/route_name.dart';
import 'package:whatsapp_clone/ui/screens/navigation/navigation_screen.dart';
import 'package:whatsapp_clone/ui/screens/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // splash
      case RouteName.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      // navigation
      case RouteName.navigation:
        return MaterialPageRoute(
            builder: (context) => const NavigationScreen());
      // default
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
