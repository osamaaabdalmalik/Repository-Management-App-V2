import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class UpdatePurchasesInvoiceUseCase {
  final PurchasesInvoiceRepo repo;

  UpdatePurchasesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required PurchasesInvoice salesInvoice}) async {
    Get.find<Logger>().i("Call UpdatePurchasesInvoiceUseCase");
    return await repo.updatePurchasesInvoice(purchasesInvoice: salesInvoice);
  }
}
