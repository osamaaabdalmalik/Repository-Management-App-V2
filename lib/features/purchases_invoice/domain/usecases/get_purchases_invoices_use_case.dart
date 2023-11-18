import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class GetPurchasesInvoicesUseCase {
  final PurchasesInvoiceRepo repo;

  GetPurchasesInvoicesUseCase(this.repo);

  Future<Either<Failure, List<PurchasesInvoice>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetPurchasesInvoicesUseCase");
    return await repo.getPurchasesInvoices(repositoryId: id);
  }
}
