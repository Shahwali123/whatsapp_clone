part of 'status_screen.dart';

List<Widget> floatingActions = [
  FAB(
    iconData: Icons.edit,
    mini: true,
    onPressed: () {
      // TODO: Write somethings(status)
    },
  ),
  const SizedBox(
    height: 10,
  ),
  FAB(
    iconData: Icons.camera_alt_outlined,
    onPressed: () {
      // TODO: Uplaod Media(Status)
    },
  ),
];

List<Status> elements = [
  Status(category: StatusCateg.aMine, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.bRecent, createdAt: "createdAt"),
  Status(category: StatusCateg.cViewed, createdAt: "createdAt"),
  Status(category: StatusCateg.cViewed, createdAt: "createdAt"),
  Status(category: StatusCateg.cViewed, createdAt: "createdAt"),
  Status(category: StatusCateg.dMuted, createdAt: "createdAt"),
];
