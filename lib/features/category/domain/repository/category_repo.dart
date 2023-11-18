import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/category_entity.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';

abstract class CategoryRepo {
  Future<Either<Failure, List<Category>>> getCategories({required int repositoryId});

  Future<Either<Failure, Category>> getCategory({required int id});

  Future<Either<Failure, List<Register>>> getCategoryRegisters({required int id});

  Future<Either<Failure, Unit>> createCategory({required String name, File? photo});

  Future<Either<Failure, Unit>> updateCategory({
    required int id,
    required String name,
    File? photo,
  });

  Future<Either<Failure, Unit>> deleteCategory({required int id});

  Future<Either<Failure, Unit>> deleteCategoryRegister({required int id});
}
