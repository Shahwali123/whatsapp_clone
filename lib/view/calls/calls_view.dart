import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/styles.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: 20,
          itemBuilder: (context, index) => createCallBar()),
      Positioned(
        right: 12,
        bottom: 20,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(
            Icons.add_ic_call,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}

ListTile createCallBar() {
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
    title: Text(
      "Muzammil Uet",
      style: AppStyle.title,
    ),
    subtitle: Row(
      children: const [
        Icon(
            // Icons.call_made,
            Icons.call_received,
            size: 15,
            color: Colors.red
            //greenColor,
            ),
        Text(
          "  june 22, 8:37 PM",
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    ),
    trailing: const Icon(
      Icons.call,
      color: AppColor.green,
    ),
  );
}
