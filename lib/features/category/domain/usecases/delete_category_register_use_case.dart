import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class DeleteCategoryRegisterUseCase {
  final CategoryRepo repo;

  DeleteCategoryRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteCategoryRegisterUseCase");
    return await repo.deleteCategoryRegister(id: id);
  }
}
