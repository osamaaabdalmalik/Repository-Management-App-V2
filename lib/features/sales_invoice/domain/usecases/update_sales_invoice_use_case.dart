import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class UpdateSalesInvoiceUseCase {
  final SalesInvoiceRepo repo;

  UpdateSalesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required SalesInvoice salesInvoice}) async {
    Get.find<Logger>().i("Call UpdateSalesInvoiceUseCase");
    return await repo.updateSalesInvoice(salesInvoice: salesInvoice);
  }
}
