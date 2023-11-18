import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/sales_invoice/data/data_sources/sales_invoice_remote_data_source.dart';
import 'package:rms/features/sales_invoice/domain/entities/sales_invoice_entity.dart';
import 'package:rms/features/sales_invoice/domain/repository/sales_invoice_repo.dart';

class SalesInvoiceRepoImpl implements SalesInvoiceRepo {
  final SalesInvoiceRemoteDataSource salesInvoiceRemoteDataSource;

  const SalesInvoiceRepoImpl({required this.salesInvoiceRemoteDataSource});

  @override
  Future<Either<Failure, List<SalesInvoice>>> getSalesInvoices({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoices` in |SalesInvoiceRepoImpl|");
      var salesInvoicesModels = await salesInvoiceRemoteDataSource.getSalesInvoices(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getSalesInvoices` in |SalesInvoiceRepoImpl|");
      return Right(salesInvoicesModels);
    } catch (e) {
      Get.find<Logger>().e("End `getSalesInvoices` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, SalesInvoice>> getSalesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoice` in |SalesInvoiceRepoImpl|");
      var salesInvoiceModel = await salesInvoiceRemoteDataSource.getSalesInvoice(id: id);
      Get.find<Logger>().f("End `getSalesInvoice` in |SalesInvoiceRepoImpl|");
      return Right(salesInvoiceModel);
    } catch (e) {
      Get.find<Logger>().e("End `getSalesInvoice` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<SalesInvoice>>> getSalesInvoicesArchive({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoicesArchive` in |SalesInvoiceRepoImpl|");
      var salesInvoicesModels = await salesInvoiceRemoteDataSource.getSalesInvoicesArchive(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getSalesInvoicesArchive` in |SalesInvoiceRepoImpl|");
      return Right(salesInvoicesModels);
    } catch (e) {
      Get.find<Logger>().e("End `getSalesInvoicesArchive` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, SalesInvoice>> getSalesInvoiceArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoiceArchive` in |SalesInvoiceRepoImpl|");
      var salesInvoiceModel = await salesInvoiceRemoteDataSource.getSalesInvoiceArchive(id: id);
      Get.find<Logger>().f("End `getSalesInvoiceArchive` in |SalesInvoiceRepoImpl|");
      return Right(salesInvoiceModel);
    } catch (e) {
      Get.find<Logger>().e("End `getSalesInvoiceArchive` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getSalesInvoiceRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSalesInvoiceRegisters` in |SalesInvoiceRepoImpl|");
      var salesInvoicesRegistersModels = await salesInvoiceRemoteDataSource.getSalesInvoiceRegisters(id: id);
      Get.find<Logger>().f("End `getSalesInvoiceRegisters` in |SalesInvoiceRepoImpl|");
      return Right(salesInvoicesRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getSalesInvoiceRegisters` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createSalesInvoice({required SalesInvoice salesInvoice}) async {
    try {
      Get.find<Logger>().i("Start `updateSalesInvoice` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.updateSalesInvoice(
        salesInvoiceModel: salesInvoice.toModel(),
      );
      Get.find<Logger>().f("End `updateSalesInvoice` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateSalesInvoice` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateSalesInvoice({required SalesInvoice salesInvoice}) async {
    try {
      Get.find<Logger>().i("Start `updateSalesInvoice` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.updateSalesInvoice(
        salesInvoiceModel: salesInvoice.toModel(),
      );
      Get.find<Logger>().f("End `updateSalesInvoice` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateSalesInvoice` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSalesInvoice({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSalesInvoice` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.deleteSalesInvoice(id: id);
      Get.find<Logger>().f("End `deleteSalesInvoice` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteSalesInvoice` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSalesInvoiceRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSalesInvoiceRegister` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.deleteSalesInvoiceRegister(id: id);
      Get.find<Logger>().f("End `deleteSalesInvoiceRegister` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteSalesInvoiceRegister` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> meetDebtSalesInvoice({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `meetDebtSalesInvoice` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.meetDebtSalesInvoice(id: id, payment: payment);
      Get.find<Logger>().f("End `meetDebtSalesInvoice` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `meetDebtSalesInvoice` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> addSalesInvoiceToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addSalesInvoiceToArchive` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.addSalesInvoiceToArchive(id: id);
      Get.find<Logger>().f("End `addSalesInvoiceToArchive` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `addSalesInvoiceToArchive` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeSalesInvoiceFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeSalesInvoiceFromArchive` in |SalesInvoiceRepoImpl|");
      await salesInvoiceRemoteDataSource.removeSalesInvoiceFromArchive(id: id);
      Get.find<Logger>().f("End `removeSalesInvoiceFromArchive` in |SalesInvoiceRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `removeSalesInvoiceFromArchive` in |SalesInvoiceRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
