import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/product/domain/entities/product_entity.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<Product>>> getProducts({required int repositoryId});

  Future<Either<Failure, Product>> getProduct({required int id});

  Future<Either<Failure, Unit>> createProduct({required Product product, File? photo});

  Future<Either<Failure, Unit>> updateProduct({required Product product, File? photo});

  Future<Either<Failure, Unit>> deleteProduct({required int id});

  Future<Either<Failure, List<Register>>> getProductRegisters({required int id});

  Future<Either<Failure, Unit>> deleteProductRegister({required int id});
}
