import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/screens/chat/chat_widgets.dart';
import 'package:whatsapp_clone/ui/widgets/fab_button.dart';

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
        Positioned(
          right: 12,
          bottom: 20,
          child: FAB(
            iconData: Icons.message_outlined,
            onPressed: () {
              // TODO: Select Contact to Chat
            },
          ),
        ),
      ],
    );
  }
}
