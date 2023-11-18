import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class AddSupplierToArchiveUseCase {
  final SupplierRepo repo;

  AddSupplierToArchiveUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call AddSupplierToArchiveUseCase");
    return await repo.addSupplierToArchive(id: id);
  }
}
