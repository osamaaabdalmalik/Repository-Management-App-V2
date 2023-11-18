import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/product/domain/entities/product_entity.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class GetProductUseCase {
  final ProductRepo repo;

  GetProductUseCase(this.repo);

  Future<Either<Failure, Product>> call({required int id}) async {
    Get.find<Logger>().i("Call GetProductUseCase");
    return await repo.getProduct(id: id);
  }
}
