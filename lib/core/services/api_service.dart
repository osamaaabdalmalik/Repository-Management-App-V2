import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/errors/exception.dart';
import 'package:rms/core/helpers/get_exception_from_status_code.dart';
import 'package:rms/core/helpers/header.dart';
import 'package:rms/core/helpers/network_info.dart';
import 'package:rms/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:rms/features/auth/data/models/tokens_model.dart';

class ApiService extends GetxService {
  final http.Client client;
  AuthLocalDataSource authLocalDataSource;
  TokensModel? _tokensModel;
  final NetworkInfo networkInfo;
  late bool t;

  ApiService({
    required this.authLocalDataSource,
    required this.client,
    required this.networkInfo,
  });

  @override
  Future<void> onInit() async {
    Get.find<Logger>().i('Start onInit in ApiServiceImpl');
    _tokensModel = await authLocalDataSource.getTokens();
    t = _tokensModel != null ? true : false;
    Get.find<Logger>().f('End onInit in ApiServiceImpl');
    super.onInit();
  }

  Future<Map<String, dynamic>> post({
    required String subUrl,
    required Map<String, dynamic> data,
    bool needToken = false,
  }) async {
    try {
      Get.find<Logger>().i('Start post `$subUrl` |ApiServiceImpl| data: $data');
      // if (!(await networkInfo.isConnected)) {
      //   throw OfflineException();
      // }
      if (needToken && _tokensModel == null) {
        throw UnAuthorizedException();
      }
      final response = await client.post(
        Uri.http(
          AppApiRoutes.baseUrl,
          subUrl,
        ),
        body: json.encode(data),
        headers: needToken ? setHeadersWithToken(token: _tokensModel?.access) : setHeaders(),
      );
      getExceptionStatusCode(response);
      Get.find<Logger>().f('End post `$subUrl` |ApiServiceImpl| response: ${json.decode(response.body)}');
      return Future.value(json.decode(response.body));
    } catch (e) {
      if (e is UnAuthorizedException) {
        try {
          await getAccessToken();
          Get.find<Logger>().f('Restart post `$subUrl` |ApiServiceImpl|');
          post(subUrl: subUrl, data: data, needToken: needToken);
        } catch (e) {
          rethrow;
        }
      }
      Get.find<Logger>().e('End post `$subUrl` |ApiServiceImpl| Exception: ${e.runtimeType}');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> postMultiPart({
    required String subUrl,
    required Map<String, dynamic> data,
    required String fieldFileKey,
    required File? file,
    bool needToken = false,
  }) async {
    try {
      Get.find<Logger>().i('Start postMultiPart `$subUrl` |ApiServiceImpl| data: $data');
      // if (!(await networkInfo.isConnected)) {
      //   throw OfflineException();
      // }
      if (needToken && _tokensModel == null) {
        throw UnAuthorizedException();
      }
      if (file == null) {
        return post(subUrl: subUrl, data: data, needToken: needToken);
      }
      http.MultipartRequest request = http.MultipartRequest(
        "POST",
        Uri.http(
          AppApiRoutes.baseUrl,
          subUrl,
        ),
      );
      Map<String, String> fields = {};
      data.forEach(
        (key, value) {
          if (value is List) {
            for (var i = 0; i < value.length; i++) {
              fields.addAll({'$key[$i]': jsonEncode(value[i])});
            }
          } else {
            fields.addAll({key: value.toString()});
          }
        },
      );
      request.fields.addAll(fields);
      request.headers.addAll(
        needToken ? setHeadersWithTokenMultipart(token: _tokensModel?.access) : setHeadersMultipart(),
      );
      request.files.add(
        await http.MultipartFile.fromPath(
          fieldFileKey,
          file.path,
          filename: file.path.split('/').last,
        ),
      );
      http.StreamedResponse res = await request.send();
      http.Response response = await http.Response.fromStream(res);

      getExceptionStatusCode(response);
      Get.find<Logger>().f('End postMultiPart `$subUrl` |ApiServiceImpl| response: ${json.decode(response.body)}');
      return Future.value(json.decode(response.body));
    } catch (e) {
      if (e is UnAuthorizedException) {
        try {
          await getAccessToken();
          Get.find<Logger>().f('Restart postMultiPart `$subUrl` |ApiServiceImpl|');
          post(subUrl: subUrl, data: data, needToken: needToken);
        } catch (e) {
          rethrow;
        }
      }
      Get.find<Logger>().e('End postMultiPart `$subUrl` |ApiServiceImpl| Exception: ${e.runtimeType}');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> get({
    required String subUrl,
    Map<String, String>? parameters,
    bool needToken = false,
    String? key,
  }) async {
    try {
      Get.find<Logger>().i('Start get `$subUrl` |ApiServiceImpl| parameters: $parameters');
      // if (!(await networkInfo.isConnected)) {
      //   throw OfflineException();
      // }
      if (needToken && _tokensModel == null) {
        Get.find<Logger>().e("need Token: $needToken , tokens Model: ${_tokensModel?.toJson()}");
        throw UnAuthorizedException();
      }
      parameters?.removeWhere((key, value) => value == 'null');
      final response = await client.get(
        Uri.http(
          AppApiRoutes.baseUrl,
          subUrl,
          parameters,
        ),
        headers: needToken ? setHeadersWithToken(token: _tokensModel?.access) : setHeaders(),
      );
      getExceptionStatusCode(response);
      Get.find<Logger>().f('End get `$subUrl` |ApiServiceImpl| response: ${response.body}');
      return Future.value((json.decode(response.body)));
    } catch (e) {
      if (e is UnAuthorizedException) {
        try {
          await getAccessToken();
          Get.find<Logger>().f('Restart get `$subUrl` |ApiServiceImpl|');
          get(subUrl: subUrl, parameters: parameters, needToken: needToken);
        } catch (e) {
          rethrow;
        }
      }
      Get.find<Logger>().e('End get `$subUrl` |ApiServiceImpl| Exception: ${e.runtimeType}');
      rethrow;
    }
  }

  Future<Unit> getAccessToken() async {
    try {
      Get.find<Logger>().i('Start getAccessToken |ApiServiceImpl|');
      // if (!(await networkInfo.isConnected)) {
      //   throw OfflineException();
      // }
      final response = await client.get(
        Uri.http(AppApiRoutes.baseUrl, AppApiRoutes.refreshToken),
        headers: setHeadersWithToken(token: _tokensModel?.refresh),
      );
      getExceptionStatusCode(response);
      authLocalDataSource.setTokens(TokensModel.fromJson((json.decode(response.body))));
      onInit();
      Get.find<Logger>().f('End getAccessToken |ApiServiceImpl| response: ${response.body}');
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e('End getAccessToken |ApiServiceImpl| Exception: ${e.runtimeType}');
      rethrow;
    }
  }
}
