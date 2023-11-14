import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/helpers/network_info.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/core/services/easy_loader_service.dart';
import 'package:rms/features/auth/data/data_sources/auth_local_data_source.dart';

class InitialBindings extends Bindings {
  @override
  dependencies() async {
    Get.put(Logger());
    Get.put(EasyLoaderService());

    Get.put(InternetConnectionChecker());
    Get.put<NetworkInfo>(NetworkInfoImpl(Get.find()));
    Get.put<AuthLocalDataSource>(AuthLocalDataSourceImpl(pref: Get.find()));
    Get.put(ApiService(
      client: http.Client(),
      authLocalDataSource: Get.find(),
      networkInfo: Get.find(),
    ));
  }
}
