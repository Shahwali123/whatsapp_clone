part of 'navigation_screen.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 5),
        width: 1.sw / 4.8,
        child: Text(
          label,
          style: const TextStyle(fontSize: 16),
        ));
  }
}

buildTabIndicator() {
  return const UnderlineTabIndicator(
      borderSide: BorderSide(color: AppColor.green, width: 3));
}

buildTabBar() {
  return TabBar(
      // isScrollable: true,
      unselectedLabelColor: AppColor.white,
      labelColor: AppColor.green,
      indicator: buildTabIndicator(),
      tabs: tabsList);
}
