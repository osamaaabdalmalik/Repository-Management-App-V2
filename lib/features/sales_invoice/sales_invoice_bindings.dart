import 'package:get/get.dart';
import 'package:rms/features/sales_invoice/data/data_sources/sales_invoice_remote_data_source.dart';
import 'package:rms/features/sales_invoice/data/repository/sales_invoice_repo_impl.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';
import 'package:rms/features/sales_invoice/domain/usecases/add_sales_invoice_to_archive_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/create_sales_invoice_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/delete_sales_invoice_register_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/delete_sales_invoice_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/get_sales_invoice_archive_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/get_sales_invoice_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/get_sales_invoices_archive_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/get_sales_invoices_registers_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/get_sales_invoices_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/meet_debt_sales_invoice_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/remove_sales_invoice_from_archive_use_case.dart';
import 'package:rms/features/sales_invoice/domain/usecases/update_sales_invoice_use_case.dart';

class SalesInvoiceBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<SalesInvoiceRemoteDataSource>(
      SalesInvoiceRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<SalesInvoiceRepo>(
      SalesInvoiceRepoImpl(salesInvoiceRemoteDataSource: Get.find()),
    );

    Get.put(GetSalesInvoicesUseCase(Get.find()));
    Get.put(GetSalesInvoiceUseCase(Get.find()));
    Get.put(GetSalesInvoicesArchiveUseCase(Get.find()));
    Get.put(GetSalesInvoiceArchiveUseCase(Get.find()));
    Get.put(GetSalesInvoiceRegistersUseCase(Get.find()));
    Get.put(CreateSalesInvoiceUseCase(Get.find()));
    Get.put(UpdateSalesInvoiceUseCase(Get.find()));
    Get.put(DeleteSalesInvoiceUseCase(Get.find()));
    Get.put(DeleteSalesInvoiceRegisterUseCase(Get.find()));
    Get.put(MeetDebtSalesInvoiceUseCase(Get.find()));
    Get.put(AddSalesInvoiceToArchiveUseCase(Get.find()));
    Get.put(RemoveSalesInvoiceFromArchiveUseCase(Get.find()));
  }
}
