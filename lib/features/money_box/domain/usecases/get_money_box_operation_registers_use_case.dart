import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';

class GetMoneyBoxOperationRegistersUseCase {
  final MoneyBoxRepo repo;

  GetMoneyBoxOperationRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetMoneyBoxOperationRegistersUseCase");
    return await repo.getMoneyBoxOperationRegisters(id: id);
  }
}
