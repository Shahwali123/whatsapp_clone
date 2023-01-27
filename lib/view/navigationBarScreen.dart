// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:whatsapp_clone/constants/colors.dart';
// import 'package:whatsapp_clone/constants/styles.dart';
// import 'package:whatsapp_clone/controller/cameraController.dart';
// import 'package:whatsapp_clone/view/statusScreen.dart';
// import 'callsScreen.dart';
// import 'chatScreen.dart';
// import 'chatsScreen.dart';

// class NavigationBarScreen extends StatelessWidget {
//   String dropdownValue = '';
//   // final CameraController _cameraController = Get.put(CameraController());
//   NavigationBarScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       initialIndex: 1,
//       child: Builder(
//         builder: (context) {
//           return Scaffold(
//               body: NestedScrollView(
//                   floatHeaderSlivers: false,
//                   headerSliverBuilder: (context, innerBoxIsScrolled) {
//                     return [
//                       SliverAppBar(
//                         bottom: TabBar(
//                             isScrollable: true,
//                             indicator: UnderlineTabIndicator(
//                                 borderSide:
//                                     BorderSide(color: greenColor, width: 3)),
//                             tabs: [
//                               Container(
//                                 padding: EdgeInsets.symmetric(vertical: 5),
//                                 child: Icon(
//                                   Icons.camera_alt_outlined,
//                                 ),
//                               ),
//                               Container(
//                                   padding: EdgeInsets.symmetric(vertical: 5),
//                                   alignment: Alignment.center,
//                                   width:
//                                       MediaQuery.of(context).size.width / 4.8,
//                                   child: Text(
//                                     "CHATS",
//                                     style: TextStyle(fontSize: 20),
//                                   )),
//                               Container(
//                                   alignment: Alignment.center,
//                                   padding: EdgeInsets.symmetric(vertical: 5),
//                                   width:
//                                       MediaQuery.of(context).size.width / 4.8,
//                                   child: Text(
//                                     "STATUS",
//                                     style: TextStyle(fontSize: 20),
//                                   )),
//                               Container(
//                                   alignment: Alignment.center,
//                                   padding: EdgeInsets.symmetric(vertical: 5),
//                                   width:
//                                       MediaQuery.of(context).size.width / 4.8,
//                                   child: Text(
//                                     "CALLS",
//                                     style: TextStyle(fontSize: 20),
//                                   )),
//                             ]),
//                         floating: true,
//                         snap: true,
//                         pinned: true,
//                         title: Container(child: Text("Whatsapp")),
//                         actions: [
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(Icons.search_outlined)),
//                           // DropdownButton<String>(
//                           //   value: dropdownValue,
//                           //   icon: const Icon(Icons.arrow_downward),
//                           //   iconSize: 24,
//                           //   elevation: 16,
//                           //   style: const TextStyle(color: Colors.deepPurple),
//                           //   underline: Container(
//                           //     height: 2,
//                           //     color: Colors.deepPurpleAccent,
//                           //   ),
//                           //   onChanged: (String? newValue) {},
//                           //   items: <String>['One', 'Two', 'Free', 'Four']
//                           //       .map<DropdownMenuItem<String>>((String value) {
//                           //     return DropdownMenuItem<String>(
//                           //       value: value,
//                           //       child: Text(value),
//                           //     );
//                           //   }).toList(),
//                           // )
//                           // IconButton(
//                           //     onPressed: () {

//                           //     }, icon: Icon(Icons.more_vert))
//                         ],
//                       ),
//                     ];
//                   },
//                   body: TabBarView(
//                     children: [
//                       ListView(),
//                       buildChats(),
//                       buildStatus(),
//                       buildCalls()
//                     ],
//                   )));
//         },
//       ),
//     );
//   }
// }



// ListTile createStatusBar() {
//   return ListTile(
//     onTap: () => Get.to(() => ChatScreen()),
//     leading: Container(
//       width: 40,
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           image: DecorationImage(
//               fit: BoxFit.fill, image: AssetImage("images/blank_profile.png"))),
//     ),
//     title: Text(
//       "My Status",
//       style: titleStyle,
//     ),
//     subtitle: Text(
//       "Tap to add status update",
//       style: TextStyle(fontSize: 13, color: Colors.grey),
//     ),
//   );
// }

// ListTile createCallBar() {
//   return ListTile(
//     onTap: () => Get.to(() => ChatScreen()),
//     leading: Container(
//       width: 40,
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           image: DecorationImage(
//               fit: BoxFit.fill, image: AssetImage("images/blank_profile.png"))),
//     ),
//     title: Text(
//       "Muzammil Uet",
//       style: titleStyle,
//     ),
//     subtitle: Row(
//       children: [
//         Icon(
//             // Icons.call_made,
//             Icons.call_received,
//             size: 15,
//             color: Colors.red
//             //greenColor,
//             ),
//         Text(
//           "  june 22, 8:37 PM",
//           style: TextStyle(fontSize: 13, color: Colors.grey),
//         ),
//       ],
//     ),
//     trailing: Icon(
//       Icons.call,
//       color: greenColor,
//     ),
//   );
// }
