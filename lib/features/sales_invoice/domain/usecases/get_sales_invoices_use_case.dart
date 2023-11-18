import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class GetSalesInvoicesUseCase {
  final SalesInvoiceRepo repo;

  GetSalesInvoicesUseCase(this.repo);

  Future<Either<Failure, List<SalesInvoice>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetSalesInvoicesUseCase");
    return await repo.getSalesInvoices(repositoryId: id);
  }
}