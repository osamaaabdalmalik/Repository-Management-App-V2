import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/category_entity.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class GetCategoriesUseCase {
  final CategoryRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<Failure, List<Category>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetCategoriesUseCase");
    return await repo.getCategories(repositoryId: repositoryId);
  }
}
