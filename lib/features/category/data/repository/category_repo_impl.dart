import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/data/data_sources/category_remote_data_source.dart';
import 'package:rms/features/category/domain/entities/category_entity.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/category/domain/repository/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryRemoteDataSource categoryRemoteDataSource;

  const CategoryRepoImpl({required this.categoryRemoteDataSource});

  @override
  Future<Either<Failure, List<Category>>> getCategories({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getCategories` in |CategoryRepoImpl|");
      var categoriesModels = await categoryRemoteDataSource.getCategories(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getCategories` in |CategoryRepoImpl|");
      return Right(categoriesModels);
    } catch (e) {
      Get.find<Logger>().e("End `getCategories` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Category>> getCategory({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getCategory` in |CategoryRepoImpl|");
      var categoryModels = await categoryRemoteDataSource.getCategory(id: id);
      Get.find<Logger>().f("End `getCategory` in |CategoryRepoImpl|");
      return Right(categoryModels);
    } catch (e) {
      Get.find<Logger>().e("End `getCategory` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getCategoryRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getCategoryRegisters` in |CategoryRepoImpl|");
      var categoriesRegistersModels = await categoryRemoteDataSource.getCategoryRegisters(id: id);
      Get.find<Logger>().f("End `getCategoryRegisters` in |CategoryRepoImpl|");
      return Right(categoriesRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getCategoryRegisters` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createCategory({required String name, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `createCategory` in |CategoryRepoImpl|");
      await categoryRemoteDataSource.createCategory(
        name: name,
        photo: photo,
      );
      Get.find<Logger>().f("End `createCategory` in |CategoryRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `createCategory` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCategory({
    required int id,
    required String name,
    File? photo,
  }) async {
    try {
      Get.find<Logger>().i("Start `updateCategory` in |CategoryRepoImpl|");
      await categoryRemoteDataSource.updateCategory(
        id: id,
        name: name,
        photo: photo,
      );
      Get.find<Logger>().f("End `updateCategory` in |CategoryRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateCategory` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCategory({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteCategory` in |CategoryRepoImpl|");
      await categoryRemoteDataSource.deleteCategory(id: id);
      Get.find<Logger>().f("End `deleteCategory` in |CategoryRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteCategory` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCategoryRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteCategoryRegister` in |CategoryRepoImpl|");
      await categoryRemoteDataSource.deleteCategoryRegister(id: id);
      Get.find<Logger>().f("End `deleteCategoryRegister` in |CategoryRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteCategoryRegister` in |CategoryRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
