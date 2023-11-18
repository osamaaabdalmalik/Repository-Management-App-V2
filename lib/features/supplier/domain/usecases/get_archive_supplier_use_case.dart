import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class GetArchiveSupplierUseCase {
  final SupplierRepo repo;

  GetArchiveSupplierUseCase(this.repo);

  Future<Either<Failure, Supplier>> call({required int id}) async {
    Get.find<Logger>().i("Call GetArchiveSupplierUseCase");
    return await repo.getArchiveSupplier(id: id);
  }
}
