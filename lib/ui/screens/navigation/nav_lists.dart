part of 'navigation_screen.dart';

// Tabs
List<Widget> tabsList = [
  Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: const Icon(
      Icons.people,
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
