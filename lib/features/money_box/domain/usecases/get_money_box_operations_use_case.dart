import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/money_box/domain/entities/money_box_operation.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class GetMoneyBoxOperationsUseCase {
  final MoneyBoxRepo repo;

  GetMoneyBoxOperationsUseCase(this.repo);

  Future<Either<Failure, List<MoneyBoxOperation>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetMoneyBoxOperationsUseCase");
    return await repo.getMoneyBoxOperations(repositoryId: repositoryId);
  }
}
