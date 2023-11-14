import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_keys.dart';
import 'package:rms/features/auth/data/models/tokens_model.dart';
import 'package:rms/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<Unit> setUser(UserModel userModel);

  UserModel? getUser();

  Future<Unit> setTokens(TokensModel tokensModel);

  Future<TokensModel?> getTokens();

  Future<Unit> setPrimitiveData(String key, dynamic value);

  T? getPrimitiveData<T>(String key);

  Future<Unit> clear();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SharedPreferences pref;

  AuthLocalDataSourceImpl({
    required this.pref,
  });

  @override
  Future<Unit> setUser(UserModel userModel) async {
    Get.find<Logger>().i(
      "Start `setUser` in |AuthLocalDataSourceImplWithSharedPreferences| ~~userModel~~ ${userModel.toJson()}",
    );

    Object userJson = userModel.toJson();
    final isStoreUser = await pref.setString(AppKeys.user, json.encode(userJson));

    Get.find<Logger>().f(
      "End `setUser` in |AuthLocalDataSourceImplWithSharedPreferences| ~~isStoreUser~~ $isStoreUser",
    );
    return Future.value(unit);
  }

  @override
  UserModel? getUser() {
    Get.find<Logger>().i("Start `getUser` in |AuthLocalDataSourceImplWithSharedPreferences|");
    final String? userString = pref.getString(AppKeys.user);
    if (userString != null) {
      Get.find<Logger>().f(
        "End `getUser` in |AuthLocalDataSourceImplWithSharedPreferences| ~~user~~ $userString",
      );
      return UserModel.fromJson(json.decode(userString));
    }
    Get.find<Logger>().f(
      "End `getUser` in |AuthLocalDataSourceImplWithSharedPreferences| ~~user~~ null",
    );
    return null;
  }

  @override
  Future<Unit> setTokens(TokensModel tokensModel) async {
    Get.find<Logger>().i(
      "Start `setTokens` in |AuthLocalDataSourceImplWithSharedPreferences| ~~tokensModel~~ ${tokensModel.toJson()}",
    );

    Object tokensJson = tokensModel.toJson();
    final isStoreTokens = await pref.setString(
      AppKeys.tokens,
      jsonEncode(tokensJson),
    );

    Get.find<Logger>().f(
      "End `setTokens` in |AuthLocalDataSourceImplWithSharedPreferences| ~~isStoreTokens~~ $isStoreTokens",
    );
    return Future.value(unit);
  }

  @override
  Future<TokensModel?> getTokens() {
    Get.find<Logger>().i("Start `getTokens` in |AuthLocalDataSourceImplWithSharedPreferences|");

    final String? tokensString = pref.getString(AppKeys.tokens);
    if (tokensString != null) {
      Get.find<Logger>().f(
        "End `getTokens` in |AuthLocalDataSourceImplWithSharedPreferences| ~~Tokens~~ $tokensString",
      );
      return Future.value(TokensModel.fromJson(json.decode(tokensString)));
    }

    Get.find<Logger>().f(
      "End `getTokens` in |AuthLocalDataSourceImplWithSharedPreferences| ~~Tokens~~ $tokensString",
    );
    return Future.value(null);
  }

  @override
  Future<Unit> setPrimitiveData(String key, dynamic value) async {
    Get.find<Logger>().i(
      "Start `setPrimitiveData` in |AuthLocalDataSourceImplWithSharedPreferences| ~~key~~ $key, ~~value~~ $value",
    );
    bool isSetDone = false;
    if (value is int) {
      isSetDone = await pref.setInt(key, value);
      return Future.value(unit);
    }
    if (value is double) {
      isSetDone = await pref.setDouble(key, value);
      return Future.value(unit);
    }
    if (value is bool) {
      isSetDone = await pref.setBool(key, value);
      return Future.value(unit);
    }
    if (value is String) {
      isSetDone = await pref.setString(key, value);
      return Future.value(unit);
    }
    Get.find<Logger>().f(
      "End `setPrimitiveData` in |AuthLocalDataSourceImplWithSharedPreferences| ~~isSetDone~~ $isSetDone",
    );
    return Future.value(unit);
  }

  @override
  T? getPrimitiveData<T>(String key) {
    Get.find<Logger>().i("Start `getPrimitiveData` in |AuthLocalDataSourceImplWithSharedPreferences| ~~key~~ $key");
    T? value;
    if (T.toString() == 'int') {
      value = pref.getInt(key) as T?;
    }
    if (T.toString() == 'double') {
      value = pref.getDouble(key) as T?;
    }
    if (T.toString() == 'bool') {
      value = pref.getBool(key) as T?;
    }
    if (T.toString() == 'String') {
      value = pref.getString(key) as T?;
    }
    Get.find<Logger>().f(
      "End `getPrimitiveData` in |AuthLocalDataSourceImplWithSharedPreferences| ~~$key~~ $value",
    );
    return value;
  }

  @override
  Future<Unit> clear() async {
    Get.find<Logger>().i("Start `clear` in |AuthLocalDataSourceImplWithSharedPreferences|");
    final clear = await pref.clear();
    Get.find<Logger>().f(
      "End `clear` in |AuthLocalDataSourceImplWithSharedPreferences| ~~isClear~~ $clear ",
    );
    return Future.value(unit);
  }
}
