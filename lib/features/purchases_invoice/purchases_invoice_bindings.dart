import 'package:get/get.dart';
import 'package:rms/features/purchases_invoice/data/data_sources/purchases_invoice_remote_data_source.dart';
import 'package:rms/features/purchases_invoice/data/repository/purcases_invoice_repo_impl.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/add_purchases_invoice_to_archive_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/create_purchases_invoice_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/delete_purchases_invoice_register_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/delete_purchases_invoice_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/get_purchases_invoice_archive_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/get_purchases_invoice_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/get_purchases_invoices_archive_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/get_purchases_invoices_registers_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/get_purchases_invoices_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/meet_debt_purchases_invoice_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/remove_purchases_invoice_from_archive_use_case.dart';
import 'package:rms/features/purchases_invoice/domain/usecases/update_purchases_invoice_use_case.dart';

class PurchasesInvoiceBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<PurchasesInvoiceRemoteDataSource>(
      PurchasesInvoiceRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<PurchasesInvoiceRepo>(
      PurchasesInvoiceRepoImpl(purchasesInvoiceRemoteDataSource: Get.find()),
    );

    Get.put(GetPurchasesInvoicesUseCase(Get.find()));
    Get.put(GetPurchasesInvoiceUseCase(Get.find()));
    Get.put(GetPurchasesInvoicesArchiveUseCase(Get.find()));
    Get.put(GetPurchasesInvoiceArchiveUseCase(Get.find()));
    Get.put(GetPurchasesInvoiceRegistersUseCase(Get.find()));
    Get.put(CreatePurchasesInvoiceUseCase(Get.find()));
    Get.put(UpdatePurchasesInvoiceUseCase(Get.find()));
    Get.put(DeletePurchasesInvoiceUseCase(Get.find()));
    Get.put(DeletePurchasesInvoiceRegisterUseCase(Get.find()));
    Get.put(MeetDebtPurchasesInvoiceUseCase(Get.find()));
    Get.put(AddPurchasesInvoiceToArchiveUseCase(Get.find()));
    Get.put(RemovePurchasesInvoiceFromArchiveUseCase(Get.find()));
  }
}
