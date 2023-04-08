import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/res/colors.dart';
import 'package:whatsapp_clone/core/res/styles.dart';

part 'community_widgets.dart';

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
            height: 1.sh * 0.02,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: 3,
              separatorBuilder: (context, _) => SizedBox(
                height: 1.sh * 0.015,
              ),
              itemBuilder: (context, _) => const Community(),
            ),
          ),
        ],
      ),
    );
  }
}
