import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/entities/user_entity.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class GetUserUseCase {
  final AuthRepo repo;

  GetUserUseCase(this.repo);

  Either<Failure, User?> call() {
    Get.find<Logger>().i("Call GetUserUseCase");
    return repo.getUser();
  }
}
