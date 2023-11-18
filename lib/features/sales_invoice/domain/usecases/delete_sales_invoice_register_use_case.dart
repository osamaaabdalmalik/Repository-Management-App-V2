import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class DeleteSalesInvoiceRegisterUseCase {
  final SalesInvoiceRepo repo;

  DeleteSalesInvoiceRegisterUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteSalesInvoiceRegisterUseCase");
    return await repo.deleteSalesInvoiceRegister(id: id);
  }
}
