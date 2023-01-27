import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/assets_url.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/utils/utils.dart';
import 'package:whatsapp_clone/view/splash/splash_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SplashUtils.splash(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: AppColors.background,
        height: Utils.height(context),
        width: Utils.width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(
              flex: 4,
              child: SizedBox(),
            ),
            Image.asset(
              AssetsUrl.whatsappLogo,
              height: Utils.height(context) / 7,
              width: Utils.width(context) / 5,
              color: Colors.white,
            ),
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "From SW Khan",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
