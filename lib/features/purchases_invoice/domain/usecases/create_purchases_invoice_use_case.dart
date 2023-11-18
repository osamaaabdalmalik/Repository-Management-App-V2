import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class CreatePurchasesInvoiceUseCase {
  final PurchasesInvoiceRepo repo;

  CreatePurchasesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required PurchasesInvoice purchasesInvoice}) async {
    Get.find<Logger>().i("Call CreatePurchasesInvoiceUseCase");
    return await repo.createPurchasesInvoice(purchasesInvoice: purchasesInvoice);
  }
}
