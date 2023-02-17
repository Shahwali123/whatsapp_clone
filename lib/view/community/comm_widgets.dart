part of "comm_view.dart";

class Community extends StatelessWidget {
  const Community({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondary.withOpacity(0.3),
      child: Column(
        children: [
          const CommunityItem(),
          Divider(
            color: AppColor.white.withOpacity(0.1),
            thickness: 1,
          ),
          Column(
            children: const [
              CommunityItem(),
              CommunityItem(),
              CommunityItem(),
            ],
          )
        ],
      ),
    );
  }
}

class CommunityItem extends StatelessWidget {
  const CommunityItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
          horizontal: Utils.width * 0.05, vertical: Utils.height * 0.01),
      leading: const CommunityBadge(isNewCommunity: false),
      title: Text(
        "New Communtiy",
        style: AppStyle.title,
      ),
      tileColor: AppColor.secondary.withOpacity(0.15),
    );
  }
}

class CommunityBadge extends StatelessWidget {
  const CommunityBadge({super.key, required this.isNewCommunity});
  final bool isNewCommunity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColor.grey,
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.people_alt_outlined,
                color: AppColor.white,
                size: 30,
              ),
            ),
          ),
        ),
        isNewCommunity
            ? const Positioned(
                right: 4,
                bottom: 3,
                child: CircleAvatar(
                  backgroundColor: AppColor.green,
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
