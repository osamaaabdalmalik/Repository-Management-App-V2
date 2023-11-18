import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class CreateSupplierUseCase {
  final SupplierRepo repo;

  CreateSupplierUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required Supplier supplier,
    File? photo,
  }) async {
    Get.find<Logger>().i("Call CreateSupplierUseCase");
    return await repo.createSupplier(
      supplier: supplier.toModel(),
      photo: photo,
    );
  }
}
