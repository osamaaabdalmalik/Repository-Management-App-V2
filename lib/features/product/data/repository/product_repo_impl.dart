import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/product/data/data_sources/product_remote_data_source.dart';
import 'package:rms/features/product/domain/entities/product_entity.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepoImpl({required this.productRemoteDataSource});

  @override
  Future<Either<Failure, List<Product>>> getProducts({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getProducts` in |ProductRepoImpl|");
      var productsModels = await productRemoteDataSource.getProducts(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getProducts` in |ProductRepoImpl|");
      return Right(productsModels);
    } catch (e) {
      Get.find<Logger>().e("End `getProducts` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Product>> getProduct({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getProduct` in |ProductRepoImpl|");
      var productModel = await productRemoteDataSource.getProduct(id: id);
      Get.find<Logger>().f("End `getProduct` in |ProductRepoImpl|");
      return Right(productModel);
    } catch (e) {
      Get.find<Logger>().e("End `getProduct` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProduct({required Product product, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateProduct` in |ProductRepoImpl|");
      await productRemoteDataSource.updateProduct(
        productModel: product.toModel(),
        photo: photo,
      );
      Get.find<Logger>().f("End `updateProduct` in |ProductRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateProduct` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteProduct({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteProduct` in |ProductRepoImpl|");
      await productRemoteDataSource.deleteProduct(id: id);
      Get.find<Logger>().f("End `deleteProduct` in |ProductRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteProduct` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getProductRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getProductRegisters` in |ProductRepoImpl|");
      var productsRegistersModels = await productRemoteDataSource.getProductRegisters(id: id);
      Get.find<Logger>().f("End `getProductRegisters` in |ProductRepoImpl|");
      return Right(productsRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getProductRegisters` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteProductRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteProductRegister` in |ProductRepoImpl|");
      await productRemoteDataSource.deleteProductRegister(id: id);
      Get.find<Logger>().f("End `deleteProductRegister` in |ProductRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteProductRegister` in |ProductRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
