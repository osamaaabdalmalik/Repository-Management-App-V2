import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class MeetDebtSalesInvoiceUseCase {
  final SalesInvoiceRepo repo;

  MeetDebtSalesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id, required double payment}) async {
    Get.find<Logger>().i("Call MeetDebtSalesInvoiceUseCase");
    return await repo.meetDebtSalesInvoice(id: id, payment: payment);
  }
}
