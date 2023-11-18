import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class GetPurchasesInvoiceRegistersUseCase {
  final PurchasesInvoiceRepo repo;

  GetPurchasesInvoiceRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetPurchasesInvoiceRegistersUseCase");
    return await repo.getPurchasesInvoiceRegisters(id: id);
  }
}
