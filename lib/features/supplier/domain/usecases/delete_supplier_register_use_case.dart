import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class DeleteSupplierRegisterUseCase {
  final SupplierRepo repo;

  DeleteSupplierRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteSupplierRegisterUseCase");
    return await repo.deleteSupplierRegister(id: id);
  }
}
