import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class UpdateMoneyBoxOperationUseCase {
  final MoneyBoxRepo repo;

  UpdateMoneyBoxOperationUseCase(this.repo);

  Future<Either<Failure, Unit>> call({
    required int id,
    required double totalPrice,
    required String date,
  }) async {
    Get.find<Logger>().i("Call UpdateMoneyBoxOperationUseCase");
    return await repo.updateMoneyBoxOperation(
      id: id,
      totalPrice: totalPrice,
      date: date,
    );
  }
}
