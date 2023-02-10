import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/res/theme/main_theme.dart';
import 'package:whatsapp_clone/utils/routes/route.dart';
import 'package:whatsapp_clone/utils/routes/route_name.dart';
import 'package:whatsapp_clone/viewmodel/media_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MediaProvider())],
      child: MaterialApp(
        initialRoute: RouteName.splash,
        theme: AppThemes.mainTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
