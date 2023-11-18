import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/core/helpers/get_failure_from_exception.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/supplier/data/data_sources/supplier_remote_data_source.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';
import 'package:rms/features/supplier/domain/repository/supplier_repo.dart';

class SupplierRepoImpl implements SupplierRepo {
  final SupplierRemoteDataSource supplierRemoteDataSource;

  SupplierRepoImpl({required this.supplierRemoteDataSource});

  @override
  Future<Either<Failure, List<Supplier>>> getSuppliers({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getSuppliers` in |SupplierRepoImpl|");
      var suppliersModels = await supplierRemoteDataSource.getSuppliers(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getSuppliers` in |SupplierRepoImpl|");
      return Right(suppliersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getSuppliers` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Supplier>> getSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSupplier` in |SupplierRepoImpl|");
      var supplierModel = await supplierRemoteDataSource.getSupplier(id: id);
      Get.find<Logger>().f("End `getSupplier` in |SupplierRepoImpl|");
      return Right(supplierModel);
    } catch (e) {
      Get.find<Logger>().e("End `getSupplier` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Supplier>>> getArchivesSuppliers({required int repositoryId}) async {
    try {
      Get.find<Logger>().i("Start `getArchivesSuppliers` in |SupplierRepoImpl|");
      var suppliersModels = await supplierRemoteDataSource.getArchivesSuppliers(repositoryId: repositoryId);
      Get.find<Logger>().f("End `getArchivesSuppliers` in |SupplierRepoImpl|");
      return Right(suppliersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getArchivesSuppliers` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Supplier>> getArchiveSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getArchiveSupplier` in |SupplierRepoImpl|");
      var supplierModel = await supplierRemoteDataSource.getArchiveSupplier(id: id);
      Get.find<Logger>().f("End `getArchiveSupplier` in |SupplierRepoImpl|");
      return Right(supplierModel);
    } catch (e) {
      Get.find<Logger>().e("End `getArchiveSupplier` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Register>>> getSupplierRegisters({required int id}) async {
    try {
      Get.find<Logger>().i("Start `getSupplierRegisters` in |SupplierRepoImpl|");
      var suppliersRegistersModels = await supplierRemoteDataSource.getSupplierRegisters(id: id);
      Get.find<Logger>().f("End `getSupplierRegisters` in |SupplierRepoImpl|");
      return Right(suppliersRegistersModels);
    } catch (e) {
      Get.find<Logger>().e("End `getSupplierRegisters` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> createSupplier({required Supplier supplier, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `createSupplier` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.createSupplier(
        supplierModel: supplier.toModel(),
        photo: photo,
      );
      Get.find<Logger>().f("End `createSupplier` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `createSupplier` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateSupplier({required Supplier supplier, File? photo}) async {
    try {
      Get.find<Logger>().i("Start `updateSupplier` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.updateSupplier(
        supplierModel: supplier.toModel(),
        photo: photo,
      );
      Get.find<Logger>().f("End `updateSupplier` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `updateSupplier` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSupplier({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSupplier` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.deleteSupplier(id: id);
      Get.find<Logger>().f("End `deleteSupplier` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteSupplier` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSupplierRegister({required int id}) async {
    try {
      Get.find<Logger>().i("Start `deleteSupplierRegister` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.deleteSupplierRegister(id: id);
      Get.find<Logger>().f("End `deleteSupplierRegister` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteSupplierRegister` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> meetDebtSupplier({required int id, required double payment}) async {
    try {
      Get.find<Logger>().i("Start `deleteSupplierRegister` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.meetDebtSupplier(id: id, payment: payment);
      Get.find<Logger>().f("End `deleteSupplierRegister` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `deleteSupplierRegister` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> addSupplierToArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `addSupplierToArchive` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.addSupplierToArchive(id: id);
      Get.find<Logger>().f("End `addSupplierToArchive` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `addSupplierToArchive` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeSupplierFromArchive({required int id}) async {
    try {
      Get.find<Logger>().i("Start `removeSupplierFromArchive` in |SupplierRepoImpl|");
      await supplierRemoteDataSource.removeSupplierFromArchive(id: id);
      Get.find<Logger>().f("End `removeSupplierFromArchive` in |SupplierRepoImpl|");
      return const Right(unit);
    } catch (e) {
      Get.find<Logger>().e("End `removeSupplierFromArchive` in |SupplierRepoImpl| Exception: ${e.runtimeType}");
      return Left(getFailureFromException(e));
    }
  }
}
