import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/res/colors.dart';

class AppStyle {
  static TextStyle h1 = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 17, color: AppColor.white);
  static TextStyle body = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 14, color: AppColor.grey);
  static TextStyle groupLabel = TextStyle(color: AppColor.grey);
  static TextStyle unReadMsgNum = const TextStyle(
      fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold);
}
