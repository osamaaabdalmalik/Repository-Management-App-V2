import 'dart:io';

import 'package:rms/core/constants/app_assets.dart';
import 'package:rms/core/constants/app_colors.dart';
import 'package:rms/core/helpers/pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class PrimaryImagePicker extends StatelessWidget {
  final String labelText;
  final void Function(File? file)? onImagePick;

  const PrimaryImagePicker({
    Key? key,
    required this.labelText,
    this.onImagePick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: AppColors.gray,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Center(
            child: InkWell(
              onTap: () async {
                File? file = await Pickers.pickImage(ImageSource.gallery);
                if (onImagePick != null) {
                  onImagePick!.call(file);
                }
              },
              child: SvgPicture.asset(AppAssets.choseImage),
            ),
          ),
        ],
      ),
    );
  }
}
