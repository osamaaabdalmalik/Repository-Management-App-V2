import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';

abstract class PurchasesInvoiceRepo {
  Future<Either<Failure, List<PurchasesInvoice>>> getPurchasesInvoices({required int repositoryId});

  Future<Either<Failure, PurchasesInvoice>> getPurchasesInvoice({required int id});

  Future<Either<Failure, List<PurchasesInvoice>>> getPurchasesInvoicesArchive({required int repositoryId});

  Future<Either<Failure, PurchasesInvoice>> getPurchasesInvoiceArchive({required int id});

  Future<Either<Failure, List<Register>>> getPurchasesInvoiceRegisters({required int id});

  Future<Either<Failure, Unit>> createPurchasesInvoice({required PurchasesInvoice purchasesInvoice});

  Future<Either<Failure, Unit>> updatePurchasesInvoice({required PurchasesInvoice purchasesInvoice});

  Future<Either<Failure, Unit>> deletePurchasesInvoice({required int id});

  Future<Either<Failure, Unit>> deletePurchasesInvoiceRegister({required int id});

  Future<Either<Failure, Unit>> meetDebtPurchasesInvoice({required int id, required double payment});

  Future<Either<Failure, Unit>> addPurchasesInvoiceToArchive({required int id});

  Future<Either<Failure, Unit>> removePurchasesInvoiceFromArchive({required int id});
}
