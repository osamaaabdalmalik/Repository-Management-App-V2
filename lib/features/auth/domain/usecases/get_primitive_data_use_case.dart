import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/auth/domain/repository/auth_repo.dart';

class GetPrimitiveDataUseCase {
  final AuthRepo repo;

  GetPrimitiveDataUseCase(this.repo);

  Either<Failure, T?> call<T>({required String key}) {
    Get.find<Logger>().i("Call GetPrimitiveDataUseCase");
    return repo.getPrimitiveData<T>(key);
  }
}
