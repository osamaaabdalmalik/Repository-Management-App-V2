import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class DeleteMoneyBoxOperationUseCase {
  final MoneyBoxRepo repo;

  DeleteMoneyBoxOperationUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteMoneyBoxOperationUseCase");
    return await repo.deleteMoneyBoxOperation(id: id);
  }
}
