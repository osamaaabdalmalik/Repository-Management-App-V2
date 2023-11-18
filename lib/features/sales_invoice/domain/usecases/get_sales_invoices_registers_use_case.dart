import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class GetSalesInvoiceRegistersUseCase {
  final SalesInvoiceRepo repo;

  GetSalesInvoiceRegistersUseCase(this.repo);

  Future<Either<Failure, List<Register>>> call({required int id}) async {
    Get.find<Logger>().i("Call GetSalesInvoiceRegistersUseCase");
    return await repo.getSalesInvoiceRegisters(id: id);
  }
}
