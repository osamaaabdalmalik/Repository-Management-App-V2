import 'package:get/get.dart';
import 'package:rms/features/supplier/data/data_sources/supplier_remote_data_source.dart';
import 'package:rms/features/supplier/data/repository/supplier_repo_impl.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';
import 'package:rms/features/supplier/domain/usecases/add_supplier_to_archive_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/create_supplier_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/delete_supplier_register_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/delete_supplier_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/get_archive_supplier_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/get_archives_suppliers_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/get_supplier_registers_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/get_supplier_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/get_suppliers_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/meet_debt_supplier_register_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/remove_supplier_to_archive_use_case.dart';
import 'package:rms/features/supplier/domain/usecases/update_supplier_use_case.dart';

class SupplierBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<SupplierRemoteDataSource>(
      SupplierRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<SupplierRepo>(
      SupplierRepoImpl(supplierRemoteDataSource: Get.find()),
    );

    Get.put(GetSuppliersUseCase(Get.find()));
    Get.put(GetSupplierUseCase(Get.find()));
    Get.put(GetArchivesSuppliersUseCase(Get.find()));
    Get.put(GetArchiveSupplierUseCase(Get.find()));
    Get.put(GetSupplierRegistersUseCase(Get.find()));
    Get.put(CreateSupplierUseCase(Get.find()));
    Get.put(UpdateSupplierUseCase(Get.find()));
    Get.put(DeleteSupplierUseCase(Get.find()));
    Get.put(DeleteSupplierRegisterUseCase(Get.find()));
    Get.put(MeetDebtSupplierRegisterUseCase(Get.find()));
    Get.put(AddSupplierToArchiveUseCase(Get.find()));
    Get.put(RemoveSupplierToArchiveUseCase(Get.find()));
  }
}
