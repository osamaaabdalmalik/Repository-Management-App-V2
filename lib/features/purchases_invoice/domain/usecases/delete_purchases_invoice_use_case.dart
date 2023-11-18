import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class DeletePurchasesInvoiceUseCase {
  final PurchasesInvoiceRepo repo;

  DeletePurchasesInvoiceUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call DeletePurchasesInvoiceUseCase");
    return await repo.deletePurchasesInvoice(id: id);
  }
}
