// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:whatsapp_clone/viewmodel/media_provider.dart';

// class CameraScreen extends StatefulWidget {
//   const CameraScreen({super.key, required this.controller});

//   final TabController? controller;

//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   final _provider = MediaProvider();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() async {
//     await _provider.pickImage(ImageSource.camera, widget.controller);
//     if (mounted) {
//       Navigator.pop(context);
//     }
//     // widget.controller?.animateTo(1);
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox(
//         // height: Utils.height,
//         // width: Utils.width,
//         // child: Consumer<MediaProvider>(builder: (context, provider, _) {
//         //   return Image.file(_provider.image ?? File(AssetUrl.placeholderImg));
//         // }),
//         );
//   }
// }
// // 