import 'dart:io';

import 'package:rms/core/constants/app_translation_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Pickers {
  static Future<String?> choseDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      cancelText: AppTranslationKeys.cancel.tr,
      confirmText: AppTranslationKeys.confirm.tr,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      return formatDate(date);
    }
    return null;
  }

  static String formatDate(DateTime date) {
    if (date.month < 10) {
      if (date.day < 10) {
        return '${date.year}-0${date.month}-0${date.day}';
      }
      return '${date.year}-0${date.month}-${date.day}';
    }
    if (date.day < 10) {
      if (date.month < 10) {
        return '${date.year}-0${date.month}-0${date.day}';
      }
      return '${date.year}-${date.month}-0${date.day}';
    }
    return '${date.year}-${date.month}-${date.day}';
  }

  static Future<File?> pickImage(ImageSource imageSource) async {
    ImagePicker picker = ImagePicker();
    XFile? pickedImage = await picker.pickImage(source: imageSource);
    if (pickedImage != null) {
      return File(pickedImage.path);
    }
    return null;
  }
}
