import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/product/domain/repository/product_repo.dart';

class DeleteProductRegisterUseCase {
  final ProductRepo repo;

  DeleteProductRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteProductRegisterUseCase");
    return await repo.deleteProductRegister(id: id);
  }
}
