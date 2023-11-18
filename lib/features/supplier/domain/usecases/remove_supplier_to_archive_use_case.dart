import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class RemoveSupplierToArchiveUseCase {
  final SupplierRepo repo;

  RemoveSupplierToArchiveUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call RemoveSupplierToArchiveUseCase");
    return await repo.removeSupplierFromArchive(id: id);
  }
}
