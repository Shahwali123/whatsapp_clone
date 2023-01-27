import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/styles.dart';

// building chats screen
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
            backgroundColor: Colors.green,
            onPressed: () {
              // insert code for adding contacts
            },
            child: const Icon(
              Icons.message_outlined,
              color: Colors.white,
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
              fit: BoxFit.fill,
              image: AssetImage("assets/images/blank_profile.png"))),
    ),
    title: const Text(
      "Section B",
      style: AppStyles.titleStyle,
    ),
    subtitle: const Text(
      "Muzammil: How are you",
      style: TextStyle(fontSize: 13, color: Colors.grey),
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text(
          "7:08 PM",
          style: TextStyle(
              fontSize: 13,
              color: AppColors.green,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        CircleAvatar(
          radius: 10,
          backgroundColor: AppColors.green,
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
