import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/view/calls/calls.dart';
import 'package:whatsapp_clone/view/chat/chat.dart';
import 'package:whatsapp_clone/view/status/status.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Builder(builder: (context) {
          return Scaffold(
              body: NestedScrollView(
                  floatHeaderSlivers: false,
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        bottom: TabBar(
                            // isScrollable: true,
                            unselectedLabelColor: AppColors.grey,
                            labelColor: AppColors.green,
                            indicator: const UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    color: AppColors.green, width: 3)),
                            tabs: tabsList),
                        floating: true,
                        snap: true,
                        pinned: true,
                        automaticallyImplyLeading: false,
                        title: Text(
                          "Whatsapp",
                          style: TextStyle(color: AppColors.grey),
                        ),
                        actions: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search_outlined,
                                color: AppColors.grey,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: AppColors.grey,
                              ))
                        ],
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      ListView(),
                      const ChatScreen(),
                      const StatusScreen(),
                      const CallScreen()
                    ],
                  )));
        }));
  }
}

List<Widget> tabsList = [
  Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: const Icon(
      Icons.camera_alt_outlined,
    ),
  ),
  const CustomTab(
    label: "Chats",
  ),
  const CustomTab(
    label: "Status",
  ),
  const CustomTab(
    label: "Calls",
  ),
];

class CustomTab extends StatelessWidget {
  const CustomTab({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 5),
        width: MediaQuery.of(context).size.width / 4.8,
        child: Text(
          label,
          style: const TextStyle(fontSize: 16),
        ));
  }
}
