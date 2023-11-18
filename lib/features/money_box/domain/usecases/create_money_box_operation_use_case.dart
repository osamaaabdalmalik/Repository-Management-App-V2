import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class CreateMoneyBoxOperationUseCase {
  final MoneyBoxRepo repo;

  CreateMoneyBoxOperationUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required double totalPrice,
    required String date,
  }) async {
    Get.find<Logger>().i("Call CreateMoneyBoxOperationUseCase");
    return await repo.createMoneyBoxOperation(
      totalPrice: totalPrice,
      date: date,
    );
  }
}
