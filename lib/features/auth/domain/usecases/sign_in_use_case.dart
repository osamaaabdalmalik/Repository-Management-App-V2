import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/entities/sign_in_entity.dart';
import 'package:rms/features/auth/domain/entities/user_entity.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class SignInUseCase {
  final AuthRepo repo;

  SignInUseCase(this.repo);

  Future<Either<Failure, User>> call({required SignIn signIn}) async {
    Get.find<Logger>().i("Call SignInUseCase");
    return await repo.signIn(signIn);
  }
}
