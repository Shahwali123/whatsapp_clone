part of 'call_screen.dart';

class CallBar extends StatelessWidget {
  const CallBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // TODO: Goto One on One Chat
      },
      leading: Container(
        width: 40,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetUrl.placeholderImg))),
      ),
      title: Text(
        "Muzammil Uet",
        style: AppStyle.h1,
      ),
      subtitle: Row(
        children: const [
          Icon(
              // Icons.call_made,
              Icons.call_received,
              size: 15,
              color: AppColor.red),
          Text(
            "  june 22, 8:37 PM",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.call,
        color: AppColor.green,
      ),
    );
  }
}
