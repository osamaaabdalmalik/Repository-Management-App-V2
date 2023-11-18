import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class MeetDebtPurchasesInvoiceUseCase {
  final PurchasesInvoiceRepo repo;

  MeetDebtPurchasesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id, required double payment}) async {
    Get.find<Logger>().i("Call MeetDebtPurchasesInvoiceUseCase");
    return await repo.meetDebtPurchasesInvoice(id: id, payment: payment);
  }
}
