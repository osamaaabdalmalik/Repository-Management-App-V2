import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class DeleteSalesInvoiceUseCase {
  final SalesInvoiceRepo repo;

  DeleteSalesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeleteSalesInvoiceUseCase");
    return await repo.deleteSalesInvoice(id: id);
  }
}
