import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/assets_url.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
import 'package:whatsapp_clone/utils/utils.dart';
import 'package:whatsapp_clone/widgets/fab_button.dart';

part 'call_widgets.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: Utils.height * 0.015, left: Utils.width * 0.05),
                child: Text(
                  "Recent",
                  style: AppStyle.groupLabel,
                )),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: 20,
                  itemBuilder: (context, index) => const CallBar()),
            ),
          ],
        ),
        FAB(
          iconData: Icons.add_ic_call,
          onPressed: () {
            // TODO: Select contact to call functionalitys
          },
        )
      ],
    );
  }
}
