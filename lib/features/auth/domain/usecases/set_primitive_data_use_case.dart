import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class SetPrimitiveDataUseCase {
  final AuthRepo repo;

  SetPrimitiveDataUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required String key, required dynamic value}) {
    Get.find<Logger>().i("Call SetPrimitiveDataUseCase");
    return repo.setPrimitiveData(key, value);
  }
}
