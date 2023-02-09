import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/assets_url.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
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
    SplashUtils.showSplash(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Utils(context);
    return Material(
      color: Colors.transparent,
      child: Container(
        color: AppColor.primary,
        height: Utils.height,
        width: Utils.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(flex: 6, child: SizedBox()),
            Image.asset(
              AssetUrl.whatsappLogo,
              height: Utils.height / 7,
              width: Utils.width / 5,
              color: Colors.white,
            ),
            const Expanded(flex: 5, child: SizedBox()),
            Text(
              "From",
              style: AppStyle.title.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "SW Khan",
              style: AppStyle.title.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: Utils.height * 0.08,
            )
          ],
        ),
      ),
    );
  }
}
