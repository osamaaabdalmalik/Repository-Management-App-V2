import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class GetTotalMoneyBoxUseCase {
  final MoneyBoxRepo repo;

  GetTotalMoneyBoxUseCase(this.repo);

  Future<Either<Failure, double>> call() async {
    Get.find<Logger>().i("Call GetTotalMoneyBoxUseCase");
    return await repo.getTotalMoneyBox();
  }
}
