import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class MeetDebtSupplierRegisterUseCase {
  final SupplierRepo repo;

  MeetDebtSupplierRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id, required double payment}) async {
    Get.find<Logger>().i("Call MeetDebtSupplierRegisterUseCase");
    return await repo.meetDebtSupplier(id: id, payment: payment);
  }
}
