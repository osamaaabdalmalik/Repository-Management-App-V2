import 'package:get/get.dart';
import 'package:rms/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:rms/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:rms/features/auth/data/repository/auth_repo_impl.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';
import 'package:rms/features/auth/domain/usecases/sign_in_use_case.dart';
import 'package:rms/features/auth/presentation/controller/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<AuthLocalDataSource>(AuthLocalDataSourceImpl(pref: Get.find()));
    Get.put<AuthRemoteDataSource>(AuthRemoteDataSourceImpl(apiService: Get.find()));

    Get.put<AuthRepo>(AuthRepoImpl(
      authRemoteDataSource: Get.find(),
      authLocalDataSource: Get.find(),
      apiService: Get.find(),
    ));
    Get.put(SignInUseCase(Get.find()));
    Get.put(AuthController());
  }
}
