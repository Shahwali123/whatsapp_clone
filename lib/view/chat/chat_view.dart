import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/assets_url.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/styles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 20,
            itemBuilder: (context, index) => createChatBar()),
        Positioned(
          right: 12,
          bottom: 20,
          child: FloatingActionButton(
            backgroundColor: AppColor.green,
            onPressed: () {
              // insert code for adding contacts
            },
            child: const Icon(
              Icons.message_outlined,
              color: AppColor.white,
            ),
          ),
        )
      ],
    );
  }
}

ListTile createChatBar() {
  return ListTile(
    onTap: () {},
    leading: Container(
      width: 40,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsUrl.placeholderImg))),
    ),
    title: Text(
      "Section B",
      style: AppStyle.title,
    ),
    subtitle: Text(
      "Muzammil: How are you",
      style: AppStyle.subTitle,
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text(
          "7:08 PM",
          style: TextStyle(
              fontSize: 13, color: AppColor.green, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        CircleAvatar(
          radius: 10,
          backgroundColor: AppColor.green,
          child: Text(
            '1',
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
