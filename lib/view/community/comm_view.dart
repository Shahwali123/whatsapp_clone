import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
import 'package:whatsapp_clone/utils/utils.dart';

part 'comm_widgets.dart';

class CommuntiyScreen extends StatelessWidget {
  const CommuntiyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const CommunityItem(),
          SizedBox(
            height: Utils.height * 0.02,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: 3,
              separatorBuilder: (context, _) => SizedBox(
                height: Utils.height * 0.015,
              ),
              itemBuilder: (context, _) => const Community(),
            ),
          ),
        ],
      ),
    );
  }
}
