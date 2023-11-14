import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/constants/app_api_routes.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/auth/data/models/auth_model.dart';
import 'package:rms/features/auth/data/models/sign_in_model.dart';
import 'package:rms/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel> signIn(SignInModel signInModel);

  Future<Unit> signUp(UserModel userModel);

  Future<Unit> logout();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  ApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<AuthModel> signIn(SignInModel signInModel) async {
    try {
      Get.find<Logger>().i(
        "Start `signIn` in |AuthRemoteDataSourceImpl| ~~signInModel~~ ${signInModel.toJson()}",
      );

      Map<String, dynamic> authMap = await apiService.post(
        subUrl: AppApiRoutes.login,
        data: signInModel.toJson(),
      );
      final AuthModel authModel = AuthModel.fromJson(authMap['data']);

      Get.find<Logger>().f(
        "End `signIn` in |AuthRemoteDataSourceImpl|  ~~authModel~~ ${authModel.toJson()}",
      );
      return Future.value(authModel);
    } catch (e) {
      Get.find<Logger>().e(
        "End `signIn` in |AuthRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> signUp(UserModel userModel) async {
    try {
      Get.find<Logger>().i(
        "Start `signUp` in |AuthRemoteDataSourceImpl| ~~userModel~~ ${userModel.toJson()}",
      );

      await apiService.post(
        subUrl: AppApiRoutes.register,
        data: userModel.toJson(),
      );

      Get.find<Logger>().f("End `signUp` in |AuthRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `signUp` in |AuthRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }

  @override
  Future<Unit> logout() async {
    try {
      Get.find<Logger>().i("Start `logout` in |AuthRemoteDataSourceImpl|");

      await apiService.get(
        subUrl: AppApiRoutes.logout,
        needToken: true,
      );

      Get.find<Logger>().f("End `logout` in |AuthRemoteDataSourceImpl|");
      return Future.value(unit);
    } catch (e) {
      Get.find<Logger>().e(
        "End `logout` in |AuthRemoteDataSourceImpl| Exception: ${e.runtimeType}",
      );
      rethrow;
    }
  }
}
