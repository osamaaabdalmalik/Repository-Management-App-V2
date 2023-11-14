import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/core/services/api_service.dart';
import 'package:rms/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:rms/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:rms/features/auth/data/models/auth_model.dart';
import 'package:rms/features/auth/data/models/user_model.dart';
import 'package:rms/features/auth/domain/entities/sign_in_entity.dart';
import 'package:rms/features/auth/domain/entities/user_entity.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;
  final ApiService apiService;

  AuthRepoImpl({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
    required this.apiService,
  });

  @override
  Future<Either<Failure, User>> signIn(SignIn signIn) async {
    Get.find<Logger>().i("Start `signIn` in |AuthRepoImpl|");
    try {
      final AuthModel authModel = await authRemoteDataSource.signIn(signIn.toModel());
      Get.find<Logger>().f(
        "End `signIn` in |AuthRepoImpl| userModel:${authModel.userModel.toJson()} \ntokensModel:${authModel.tokensModel.toJson()}",
      );
      await authLocalDataSource.setUser(authModel.userModel);
      await authLocalDataSource.setTokens(authModel.tokensModel);
      await apiService.onInit();
      return Right(authModel.userModel);
    } catch (e) {
      Get.find<Logger>().e("End `signIn` in |AuthRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Either<Failure, User?> getUser() {
    Get.find<Logger>().i("Start `getUser` in |AuthRepoImpl|");
    try {
      final UserModel? userModel = authLocalDataSource.getUser();
      Get.find<Logger>().f("End `getUser` in |AuthRepoImpl| userModel:${userModel?.toJson()}");
      return Right(userModel);
    } catch (e) {
      Get.find<Logger>().e("End `getUser` in |AuthRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> setUser(User user) async {
    Get.find<Logger>().i("Start `setUser` in |AuthRepoImpl|");
    try {
      await authLocalDataSource.setUser(user.toModel());
      Get.find<Logger>().f("End `setUser` in |AuthRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `setUser` in |AuthRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> setPrimitiveData(String key, dynamic value) async {
    Get.find<Logger>().i("Start `setPrimitiveData` in |AuthRepoImpl|");
    try {
      await authLocalDataSource.setPrimitiveData(key, value);
      Get.find<Logger>().f("End `setPrimitiveData` in |AuthRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `setPrimitiveData` in |AuthRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Either<Failure, T?> getPrimitiveData<T>(String key) {
    Get.find<Logger>().i("Start `getPrimitiveData` in |AuthRepoImpl|");
    try {
      T? value = authLocalDataSource.getPrimitiveData(key);
      Get.find<Logger>().f("End `getPrimitiveData` in |AuthRepoImpl|");
      return Right(value);
    } catch (e) {
      Get.find<Logger>().e("End `getPrimitiveData` in |AuthRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
