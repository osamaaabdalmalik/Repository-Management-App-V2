import 'package:get/get.dart';

setHeadersWithToken({String? token}) => {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'lang': Get.locale!.languageCode.toString(),
    };

setHeadersWithTokenMultipart({String? token}) => {
      'Content-Type': 'multipart/form-data',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'lang': Get.locale!.languageCode.toString(),
    };

setHeaders() => {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'lang': Get.locale!.languageCode.toString(),
    };

setHeadersMultipart() => {
      'Content-Type': 'multipart/form-data',
      'Accept': 'application/json',
      'lang': Get.locale!.languageCode.toString(),
    };
