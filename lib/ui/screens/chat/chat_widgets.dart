import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/res/assets_url.dart';
import 'package:whatsapp_clone/core/res/colors.dart';
import 'package:whatsapp_clone/core/res/styles.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Container(
        width: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetUrl.placeholderImg))),
      ),
      title: Text(
        "Section B",
        style: AppStyle.h1,
      ),
      subtitle: Text(
        "Muzammil: How are you",
        style: AppStyle.body,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "7:08 PM",
            style: TextStyle(
                fontSize: 13,
                color: AppColor.green,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: AppColor.green,
            child: Text('1', style: AppStyle.unReadMsgNum),
          ),
        ],
      ),
    );
  }
}
