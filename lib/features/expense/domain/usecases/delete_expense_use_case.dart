import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class DeleteExpenseUseCase {
  final ExpenseRepo repo;

  DeleteExpenseUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteExpenseUseCase");
    return await repo.deleteExpense(id: id);
  }
}
