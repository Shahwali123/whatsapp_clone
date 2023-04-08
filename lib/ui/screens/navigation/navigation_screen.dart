import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/res/colors.dart';
import 'package:whatsapp_clone/core/res/styles.dart';
import 'package:whatsapp_clone/core/services/image_service.dart';
import 'package:whatsapp_clone/locator.dart';
import 'package:whatsapp_clone/ui/screens/call/call_screen.dart';
import 'package:whatsapp_clone/ui/screens/chat/chat_screen.dart';
import 'package:whatsapp_clone/ui/screens/community/community_screen.dart';
import 'package:whatsapp_clone/ui/screens/status/status_screen.dart';

part 'nav_widgets.dart';
part 'nav_lists.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageService = locator<ImageService>();
    // Actions
    List<Widget> actionIcons = [
      IconButton(
          onPressed: () => imageService.showSelectionDialog(context),
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
                  style: AppStyle.body.copyWith(color: AppColor.white),
                )),
                PopupMenuItem(
                    child: Text(
                  "Linked Devices",
                  style: AppStyle.body.copyWith(color: AppColor.white),
                )),
                PopupMenuItem(
                  child: Text(
                    "Settings",
                    style: AppStyle.body.copyWith(color: AppColor.white),
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
