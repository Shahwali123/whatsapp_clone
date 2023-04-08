import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/res/assets_url.dart';
import 'package:whatsapp_clone/core/res/colors.dart';
import 'package:whatsapp_clone/core/res/styles.dart';
import 'package:whatsapp_clone/ui/screens/splash/splash_utils.dart';

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
        color: AppColor.primary,
        height: 1.sh,
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(flex: 6, child: SizedBox()),
            Image.asset(
              AssetUrl.whatsappLogo,
              height: 1.sh / 7,
              width: 1.sw / 5,
              color: Colors.white,
            ),
            const Expanded(flex: 5, child: SizedBox()),
            Text(
              "From",
              style: AppStyle.h1.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "SW Khan",
              style: AppStyle.h1.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 1.sh * 0.08,
            )
          ],
        ),
      ),
    );
  }
}
