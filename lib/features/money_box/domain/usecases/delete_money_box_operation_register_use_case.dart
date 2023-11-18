import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class DeleteMoneyBoxOperationRegisterUseCase {
  final MoneyBoxRepo repo;

  DeleteMoneyBoxOperationRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteMoneyBoxOperationRegisterUseCase");
    return await repo.deleteMoneyBoxOperationRegister(id: id);
  }
}
