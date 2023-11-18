import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class GetSupplierRegistersUseCase {
  final SupplierRepo repo;

  GetSupplierRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetSupplierRegistersUseCase");
    return await repo.getSupplierRegisters(id: id);
  }
}
