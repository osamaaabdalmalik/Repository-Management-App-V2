import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/expense/domain/entities/expense.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';

class GetExpensesUseCase {
  final ExpenseRepo repo;

  GetExpensesUseCase(this.repo);

  Future<Either<Failure, List<Expense>>> call({required int repositoryId}) async {
    Get.find<Logger>().i("Call GetExpensesUseCase");
    return await repo.getExpenses(repositoryId: repositoryId);
  }
}
