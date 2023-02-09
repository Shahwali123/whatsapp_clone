import 'package:flutter/material.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/view/call/call_view.dart';
import 'package:whatsapp_clone/view/chat/chat_view.dart';
import 'package:whatsapp_clone/view/navigation/nav_lists.dart';
import 'package:whatsapp_clone/view/navigation/nav_widgets.dart';
import 'package:whatsapp_clone/view/status/status_view.dart';

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
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        bottom: buildTabBar(),
                        floating: true,
                        // snap: true,
                        pinned: true,
                        automaticallyImplyLeading: false,
                        title: SizedBox(
                          child: Text(
                            "Whatsapp",
                            style: TextStyle(color: AppColor.grey),
                          ),
                        ),
                        actions: actionIcons,
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
