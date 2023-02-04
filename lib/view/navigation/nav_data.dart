// Actions
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/view/navigation/nav_widgets.dart';

List<Widget> actionIcons = [
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search_outlined,
        color: AppColor.grey,
      )),
  IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.more_vert,
        color: AppColor.grey,
      ))
];

// Tabs
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
