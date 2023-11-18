import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class GetExpenseRegistersUseCase {
  final ExpenseRepo repo;

  GetExpenseRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetExpenseRegistersUseCase");
    return await repo.getExpenseRegisters(id: id);
  }
}
