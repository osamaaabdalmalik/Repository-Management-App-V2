import 'package:get/get.dart';
import 'package:rms/features/money_box/data/data_sources/money_box_remote_data_source.dart';
import 'package:rms/features/money_box/data/repository/money_box_repo_impl.dart';
import 'package:rms/features/money_box/domain/repository/money_box_repo.dart';
import 'package:rms/features/money_box/domain/usecases/create_money_box_operation_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/delete_money_box_operation_register_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/delete_money_box_operation_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/get_money_box_operation_registers_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/get_money_box_operations_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/get_total_money_box_use_case.dart';
import 'package:rms/features/money_box/domain/usecases/update_money_box_operation_use_case.dart';

class MoneyBoxBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<MoneyBoxRemoteDataSource>(
      MoneyBoxRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<MoneyBoxRepo>(
      MoneyBoxRepoImpl(moneyBoxRemoteDataSource: Get.find()),
    );

    Get.put(GetTotalMoneyBoxUseCase(Get.find()));
    Get.put(GetMoneyBoxOperationsUseCase(Get.find()));
    Get.put(GetMoneyBoxOperationRegistersUseCase(Get.find()));
    Get.put(CreateMoneyBoxOperationUseCase(Get.find()));
    Get.put(UpdateMoneyBoxOperationUseCase(Get.find()));
    Get.put(DeleteMoneyBoxOperationUseCase(Get.find()));
    Get.put(DeleteMoneyBoxOperationRegisterUseCase(Get.find()));
  }
}
