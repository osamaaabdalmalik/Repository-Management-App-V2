import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class AddPurchasesInvoiceToArchiveUseCase {
  final PurchasesInvoiceRepo repo;

  AddPurchasesInvoiceToArchiveUseCase(this.repo);

  Future<Either<Failure, Unit>> call({required int id}) async {
    Get.find<Logger>().i("Call AddPurchasesInvoiceToArchiveUseCase");
    return await repo.addPurchasesInvoiceToArchive(id: id);
  }
}
