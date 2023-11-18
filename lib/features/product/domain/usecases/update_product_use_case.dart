import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/Product/domain/entities/product_entity.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class UpdateProductUseCase {
  final ProductRepo repo;

  UpdateProductUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required Product product,
    File? photo,
  }) async {
    Get.find<Logger>().i("Call UpdateProductUseCase");
    return await repo.updateProduct(
      product: product.toModel(),
      photo: photo,
    );
  }
}
