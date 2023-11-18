import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/product/domain/entities/product_entity.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class GetProductsUseCase {
  final ProductRepo repo;

  GetProductsUseCase(this.repo);

  Future<Either<Failure, List<Product>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetProductsUseCase");
    return await repo.getProducts(repositoryId: repositoryId);
  }
}
