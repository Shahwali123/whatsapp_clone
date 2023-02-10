import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/res/colors.dart';
import 'package:whatsapp_clone/res/styles.dart';
import 'package:whatsapp_clone/utils/utils.dart';
import 'package:whatsapp_clone/view/call/call_view.dart';
import 'package:whatsapp_clone/view/chat/chat_view.dart';
import 'package:whatsapp_clone/view/community/community_view.dart';
import 'package:whatsapp_clone/view/status/status_view.dart';
import 'package:whatsapp_clone/viewmodel/media_provider.dart';

part 'nav_widgets.dart';
part 'nav_lists.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaProvider = Provider.of<MediaProvider>(context);
    // Actions
    List<Widget> actionIcons = [
      IconButton(
          onPressed: () => mediaProvider.showSelectionDialog(context),
          icon: Icon(
            Icons.camera_alt_outlined,
            color: AppColor.grey,
          )),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_outlined,
            color: AppColor.grey,
          )),
      PopupMenuButton(
          color: AppColor.secondary,
          icon: Icon(
            Icons.more_vert,
            color: AppColor.grey,
          ),
          itemBuilder: (context) => <PopupMenuEntry>[
                PopupMenuItem(
                    child: Text(
                  "Starred Messages",
                  style: AppStyle.subTitle.copyWith(color: AppColor.white),
                )),
                PopupMenuItem(
                    child: Text(
                  "Linked Devices",
                  style: AppStyle.subTitle.copyWith(color: AppColor.white),
                )),
                PopupMenuItem(
                  child: Text(
                    "Settings",
                    style: AppStyle.subTitle.copyWith(color: AppColor.white),
                  ),
                ),
              ])
    ];

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
            body: const TabBarView(
              children: [
                CommuntiyScreen(),
                ChatScreen(),
                StatusScreen(),
                CallScreen()
              ],
            ),
          ),
        );
      }),
    );
  }
}
