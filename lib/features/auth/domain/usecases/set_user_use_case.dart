import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/entities/user_entity.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class SetUserUseCase {
  final AuthRepo repo;

  SetUserUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required User user}) async {
    Get.find<Logger>().i("Call SetUserUseCase");
    return await repo.setUser(user);
  }
}
