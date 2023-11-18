import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class GetArchivesSuppliersUseCase {
  final SupplierRepo repo;

  GetArchivesSuppliersUseCase(this.repo);

  Future<Either<Failure, List<Supplier>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetArchivesSuppliersUseCase");
    return await repo.getArchivesSuppliers(repositoryId: repositoryId);
  }
}
