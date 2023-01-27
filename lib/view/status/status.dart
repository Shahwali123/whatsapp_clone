import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/styles.dart';

const _elements = [
  {
    "group": "a", //my status
    "ele": [1, 2, 3]
  },
  {
    "group": "b", //recent updates
    "ele": [1, 2, 3]
  },
  {
    "group": "b", //recent updates
    "ele": [1, 2, 3]
  },
  {
    "group": "b", //recent updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
    "ele": [1, 2, 3]
  },
  {
    "group": "c", //viewed updates
  },
  {
    "group": "c", //viewed updates
  },
  {
    "group": "d", //muted updates
  },
  {
    "group": "d", //muted updates
  }
];

// building status screen
class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GroupedListView<dynamic, String>(
        padding: EdgeInsets.zero,
        elements: _elements,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (String groupByValue) {
          return groupByValue == "a"
              ? Container()
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  width: double.infinity,
                  child: groupByValue == "b"
                      ? Text(
                          "Recent Updates",
                          style: TextStyle(color: AppColors.grey),
                        )
                      : ((groupByValue == "c"
                          ? Text(
                              "Viewed Updates",
                              style: TextStyle(color: AppColors.grey),
                            )
                          : Text(
                              "Muted Updates",
                              style: TextStyle(color: AppColors.grey),
                            ))));
        },
        itemBuilder: (context, dynamic element) => createStatusBar(),
        // itemComparator: (item1, item2) =>
        // item1['name'].compareTo(item2['name']), // optional
        // useStickyGroupSeparators: true, // optional
        // floatingHeader: false, // optional
      ),
      Positioned(
        right: 12,
        bottom: 20,
        child: Column(
          children: [
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.green,
              onPressed: () {},
              child: const Icon(Icons.edit),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: const Icon(Icons.camera_alt_outlined),
            ),
          ],
        ),
      )
    ]);
  }
}

ListTile createStatusBar() {
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
      "My Status",
      style: AppStyles.titleStyle,
    ),
    subtitle: const Text(
      "Tap to add status update",
      style: TextStyle(fontSize: 13, color: Colors.grey),
    ),
  );
}
