import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/category_entity.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class GetCategoryUseCase {
  final CategoryRepo repo;

  GetCategoryUseCase(this.repo);

  Future<Either<Failure, Category>> call({required int id}) async {
    Get.find<Logger>().i("Call GetCategoryUseCase");
    return await repo.getCategory(id: id);
  }
}
