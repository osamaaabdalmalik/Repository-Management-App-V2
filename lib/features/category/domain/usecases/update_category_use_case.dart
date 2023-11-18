import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class UpdateCategoryUseCase {
  final CategoryRepo repo;

  UpdateCategoryUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required int id,
    required String name,
    File? photo,
  }) async {
    Get.find<Logger>().i("Call UpdateCategoryUseCase");
    return await repo.updateCategory(
      id: id,
      name: name,
      photo: photo,
    );
  }
}
