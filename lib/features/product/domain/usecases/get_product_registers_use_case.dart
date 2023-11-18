import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/product/domain/repository/Product_repo.dart';

class GetProductRegistersUseCase {
  final ProductRepo repo;

  GetProductRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetProductRegistersUseCase");
    return await repo.getProductRegisters(id: id);
  }
}
