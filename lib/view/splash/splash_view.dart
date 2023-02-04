import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/assets_url.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/styles.dart';
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
              AssetsUrl.whatsappLogo,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                "SW Khan",
                style: AppStyle.title.copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
