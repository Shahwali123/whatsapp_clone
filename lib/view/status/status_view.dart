import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'package:whatsapp_clone/res/assets_url.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
import 'package:whatsapp_clone/widgets/fab_button.dart';

part 'status_lists.dart';
part 'status_widgets.dart';

enum StatusCateg { aMine, bRecent, cViewed, dMuted }

class Status {
  final StatusCateg category;
  final String createdAt;
  Status({
    required this.category,
    required this.createdAt,
  });
}

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GroupedListView<Status, String>(
        padding: EdgeInsets.zero,
        elements: elements,
        groupBy: (Status status) => status.category.name,
        groupSeparatorBuilder: (String category) {
          if (category == "aMine") {
            return const SizedBox.shrink();
          } else {
            String title = (category == "bRecent"
                ? "Recent Updates"
                : (category == "cViewed" ? "Viewed Updates" : "Muted Updates"));
            return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                width: double.infinity,
                child: Text(
                  title,
                  style: TextStyle(color: AppColor.grey),
                ));
          }
        },
        itemBuilder: (context, Status element) {
          return const StatusBar();
        },
      ),
      Positioned(
        right: 12,
        bottom: 20,
        child: Column(
          children: floatingActions,
        ),
      )
    ]);
  }
}
