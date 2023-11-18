import 'package:get/get.dart';
import 'package:rms/features/expense/data/data_sources/expense_remote_data_source.dart';
import 'package:rms/features/expense/data/repository/expense_repo_impl.dart';
import 'package:rms/features/expense/domain/repository/expense_repo.dart';
import 'package:rms/features/expense/domain/usecases/create_expense_use_case.dart';
import 'package:rms/features/expense/domain/usecases/delete_expense_register_use_case.dart';
import 'package:rms/features/expense/domain/usecases/delete_expense_use_case.dart';
import 'package:rms/features/expense/domain/usecases/get_expense_registers_use_case.dart';
import 'package:rms/features/expense/domain/usecases/get_expenses_use_case.dart';
import 'package:rms/features/expense/domain/usecases/meet_debt_expense_use_case.dart';
import 'package:rms/features/expense/domain/usecases/update_expense_use_case.dart';

class ExpenseBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<ExpenseRemoteDataSource>(
      ExpenseRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<ExpenseRepo>(
      ExpenseRepoImpl(expenseRemoteDataSource: Get.find()),
    );

    Get.put(GetExpensesUseCase(Get.find()));
    Get.put(GetExpenseRegistersUseCase(Get.find()));
    Get.put(CreateExpenseUseCase(Get.find()));
    Get.put(UpdateExpenseUseCase(Get.find()));
    Get.put(DeleteExpenseUseCase(Get.find()));
    Get.put(DeleteExpenseRegisterUseCase(Get.find()));
    Get.put(MeetDebtExpenseUseCase(Get.find()));
  }
}
