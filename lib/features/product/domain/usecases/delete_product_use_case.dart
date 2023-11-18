import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class DeleteProductUseCase {
  final ProductRepo repo;

  DeleteProductUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteProductUseCase");
    return await repo.deleteProduct(id: id);
  }
}
