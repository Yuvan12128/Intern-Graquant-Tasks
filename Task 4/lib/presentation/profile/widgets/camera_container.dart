import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';

const String fileName = 'profile.component.camera_container.dart';

class CameraContainer {
  static ImagePicker imagePicker = ImagePicker();
  static Widget cameraButton(
    BuildContext context,
    File? image,
    Function updateImageFun,
  ) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Material(
        type: MaterialType.transparency,
        child: IconButton(
          icon: Icon(
            Icons.camera_alt_rounded,
            color: image != null
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.surface,
          ),
          splashRadius: 25,
          splashColor: Theme.of(context).primaryColor,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => bottomSheetContainer(
                context,
                updateImageFun,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              elevation: 2,
            );
          },
        ),
      ),
    );
  }

  static Widget bottomSheetContainer(
    BuildContext context,
    Function updateImageFun,
  ) {
    Widget iconButton(String label, IconData icon, ImageSource source) {
      return InkWell(
        onTap: () async {
          try {
            Navigator.of(context).pop();
            final XFile? pickedImage =
                await imagePicker.pickImage(source: source);
            updateImageFun(pickedImage);
          } catch (err) {
            Log.error(
              context,
              fileName,
              'iconButton',
              err,
              'Profile image selection',
              'Something went wrong!...',
              false,
              null,
              null,
            );
          }
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: SizeConfig.imageSizeMultiplier * 8,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 1,
            ),
            Text(
              label,
              style: bodyText1,
            ),
          ],
        ),
      );
    }

    return makeDismissible(
      context: context,
      child: Container(
        width: double.infinity,
        height: SizeConfig.heightMultiplier * 20,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.widthMultiplier * 4,
            horizontal: SizeConfig.widthMultiplier * 7,
          ),
          child: Container(
            child: Column(
              children: [
                Text(
                  'Choose your profile picture',
                  style: subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: SizeConfig.textMultiplier * 4.3,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.widthMultiplier * 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    iconButton(
                        'Camera', Icons.camera_rounded, ImageSource.camera),
                    iconButton(
                        'Gallery', Icons.image_rounded, ImageSource.gallery),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
