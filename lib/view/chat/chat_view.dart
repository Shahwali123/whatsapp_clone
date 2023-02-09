import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/assets_url.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
import 'package:whatsapp_clone/widgets/fab_button.dart';

part 'chat_widgets.dart';

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
            itemBuilder: (context, index) => const ChatBar()),
        FAB(
          iconData: Icons.message_outlined,
          onPressed: () {
            // TODO: Select Contact to Chat
          },
        ),
      ],
    );
  }
}
