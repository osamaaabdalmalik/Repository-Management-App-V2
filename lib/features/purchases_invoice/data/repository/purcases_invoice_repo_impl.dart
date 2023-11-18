import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/purchases_invoice/data/data_sources/purchases_invoice_remote_data_source.dart';
import 'package:rms/features/purchases_invoice/domain/entities/purchases_invoice_entity.dart';
import 'package:rms/features/purchases_invoice/domain/repository/purchases_invoice_repo.dart';

class PurchasesInvoiceRepoImpl implements PurchasesInvoiceRepo {
  final PurchasesInvoiceRemoteDataSource purchasesInvoiceRemoteDataSource;

  const PurchasesInvoiceRepoImpl({required this.purchasesInvoiceRemoteDataSource});

  @override
  Future<Either<Failure, List<PurchasesInvoice>>> getPurchasesInvoices({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoices` in |PurchasesInvoiceRepoImpl|");
      var purchasesInvoicesModels = await purchasesInvoiceRemoteDataSource.getPurchasesInvoices(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getPurchasesInvoices` in |PurchasesInvoiceRepoImpl|");
      return Right(purchasesInvoicesModels);
    } catch (e) {
      Get.find<Logger>().e("End `getPurchasesInvoices` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, PurchasesInvoice>> getPurchasesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      var purchasesInvoiceModel = await purchasesInvoiceRemoteDataSource.getPurchasesInvoice(id: id);
      Get.find<Logger>().f("End `getPurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      return Right(purchasesInvoiceModel);
    } catch (e) {
      Get.find<Logger>().e("End `getPurchasesInvoice` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<PurchasesInvoice>>> getPurchasesInvoicesArchive({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoicesArchive` in |PurchasesInvoiceRepoImpl|");
      var purchasesInvoicesModels = await purchasesInvoiceRemoteDataSource.getPurchasesInvoicesArchive(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getPurchasesInvoicesArchive` in |PurchasesInvoiceRepoImpl|");
      return Right(purchasesInvoicesModels);
    } catch (e) {
      Get.find<Logger>().e("End `getPurchasesInvoicesArchive` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, PurchasesInvoice>> getPurchasesInvoiceArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoiceArchive` in |PurchasesInvoiceRepoImpl|");
      var purchasesInvoiceModel = await purchasesInvoiceRemoteDataSource.getPurchasesInvoiceArchive(id: id);
      Get.find<Logger>().f("End `getPurchasesInvoiceArchive` in |PurchasesInvoiceRepoImpl|");
      return Right(purchasesInvoiceModel);
    } catch (e) {
      Get.find<Logger>().e("End `getPurchasesInvoiceArchive` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getPurchasesInvoiceRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRepoImpl|");
      var purchasesInvoicesRegistersModels = await purchasesInvoiceRemoteDataSource.getPurchasesInvoiceRegisters(id: id);
      Get.find<Logger>().f("End `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRepoImpl|");
      return Right(purchasesInvoicesRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getPurchasesInvoiceRegisters` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createPurchasesInvoice({required PurchasesInvoice purchasesInvoice}) async {
    try {
      Get.find<Logger>().i("Start `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.updatePurchasesInvoice(
        purchasesInvoiceModel: purchasesInvoice.toModel(),
      );
      Get.find<Logger>().f("End `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePurchasesInvoice({required PurchasesInvoice purchasesInvoice}) async {
    try {
      Get.find<Logger>().i("Start `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.updatePurchasesInvoice(
        purchasesInvoiceModel: purchasesInvoice.toModel(),
      );
      Get.find<Logger>().f("End `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updatePurchasesInvoice` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePurchasesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deletePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.deletePurchasesInvoice(id: id);
      Get.find<Logger>().f("End `deletePurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deletePurchasesInvoice` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePurchasesInvoiceRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.deletePurchasesInvoiceRegister(id: id);
      Get.find<Logger>().f("End `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deletePurchasesInvoiceRegister` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> meetDebtPurchasesInvoice({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtPurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.meetDebtPurchasesInvoice(id: id, payment: payment);
      Get.find<Logger>().f("End `meetDebtPurchasesInvoice` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `meetDebtPurchasesInvoice` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> addPurchasesInvoiceToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.addPurchasesInvoiceToArchive(id: id);
      Get.find<Logger>().f("End `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `addPurchasesInvoiceToArchive` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removePurchasesInvoiceFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRepoImpl|");
      await purchasesInvoiceRemoteDataSource.removePurchasesInvoiceFromArchive(id: id);
      Get.find<Logger>().f("End `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `removePurchasesInvoiceFromArchive` in |PurchasesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
