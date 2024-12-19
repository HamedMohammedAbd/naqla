import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../global/file_image_design.dart';
import 'choose_image_widget.dart';

class ShowImages extends StatelessWidget {
  final XFile? image;
  final void Function()? onTap;
  const ShowImages({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image == null
            ? Container()
            : FileImageDesign(
                height: Get.width / 6.262,
                width: Get.width / 6.262,
                image: image,
              ),
        ChooseImageWidget(
          onTap: onTap,
        ),
      ],
    );
  }
}
