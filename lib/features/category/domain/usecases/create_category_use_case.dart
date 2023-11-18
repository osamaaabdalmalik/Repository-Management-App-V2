import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class CreateCategoryUseCase {
  final CategoryRepo repo;

  CreateCategoryUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required String name,
    File? photo,
  }) async {
    Get.find<Logger>().i("Call CreateCategoryUseCase");
    return await repo.createCategory(
      name: name,
      photo: photo,
    );
  }
}
