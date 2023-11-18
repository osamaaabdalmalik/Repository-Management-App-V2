import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';

abstract class SalesInvoiceRepo {
  Future<Either<Failure, List<SalesInvoice>>> getSalesInvoices({required int repositoryId});

  Future<Either<Failure, SalesInvoice>> getSalesInvoice({required int id});

  Future<Either<Failure, List<SalesInvoice>>> getSalesInvoicesArchive({required int repositoryId});

  Future<Either<Failure, SalesInvoice>> getSalesInvoiceArchive({required int id});

  Future<Either<Failure, List<Register>>> getSalesInvoiceRegisters({required int id});

  Future<Either<Failure, Unit>> createSalesInvoice({required SalesInvoice salesInvoice});

  Future<Either<Failure, Unit>> updateSalesInvoice({required SalesInvoice salesInvoice});

  Future<Either<Failure, Unit>> deleteSalesInvoice({required int id});

  Future<Either<Failure, Unit>> deleteSalesInvoiceRegister({required int id});

  Future<Either<Failure, Unit>> meetDebtSalesInvoice({required int id, required double payment});

  Future<Either<Failure, Unit>> addSalesInvoiceToArchive({required int id});

  Future<Either<Failure, Unit>> removeSalesInvoiceFromArchive({required int id});
}
