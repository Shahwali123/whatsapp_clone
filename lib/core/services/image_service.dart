import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/core/res/colors.dart';
import 'package:whatsapp_clone/core/res/styles.dart';

class ImageService extends ChangeNotifier {
  final ImagePicker _imagePicker = ImagePicker();

  File? _image;

  File? get image => _image;

  Future<void> pickImage(BuildContext context, ImageSource source) async {
    Navigator.pop(context);
    final pick = await _imagePicker.pickImage(source: source);
    if (pick != null) {
      _image = File(pick.path);
    }
  }

  Future<void> showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColor.secondary,
            title: Text(
              "Select a source",
              style: AppStyle.h1.copyWith(color: AppColor.white),
              textAlign: TextAlign.center,
            ),
            content: SizedBox(
              height: 1.sh * 0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SourceButton(
                    title: "Camera",
                    iconData: Icons.camera_alt_outlined,
                    onTap: () => pickImage(context, ImageSource.camera),
                  ),
                  SizedBox(
                    width: 1.sw * 0.05,
                  ),
                  SourceButton(
                    title: "Gallery",
                    iconData: Icons.image,
                    onTap: () => pickImage(context, ImageSource.gallery),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class SourceButton extends StatelessWidget {
  const SourceButton(
      {super.key, required this.title, required this.iconData, this.onTap});
  final String title;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            iconData,
            size: 1.sh * 0.05,
            color: AppColor.white,
          ),
          Text(
            title,
            style: AppStyle.h1.copyWith(color: AppColor.white),
          ),
          SizedBox(
            height: 1.sh * 0.015,
          ),
        ],
      ),
    );
  }
}
