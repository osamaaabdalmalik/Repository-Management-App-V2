import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:rms/core/errors/failures.dart';
import 'package:rms/features/category/domain/entities/register_entity.dart';
import 'package:rms/features/supplier/domain/entities/supplier_entity.dart';

abstract class SupplierRepo {
  Future<Either<Failure, List<Supplier>>> getSuppliers({required int repositoryId});

  Future<Either<Failure, Supplier>> getSupplier({required int id});

  Future<Either<Failure, List<Supplier>>> getArchivesSuppliers({required int repositoryId});

  Future<Either<Failure, Supplier>> getArchiveSupplier({required int id});

  Future<Either<Failure, List<Register>>> getSupplierRegisters({required int id});

  Future<Either<Failure, Unit>> createSupplier({required Supplier supplier, File? photo});

  Future<Either<Failure, Unit>> updateSupplier({required Supplier supplier, File? photo});

  Future<Either<Failure, Unit>> deleteSupplier({required int id});

  Future<Either<Failure, Unit>> deleteSupplierRegister({required int id});

  Future<Either<Failure, Unit>> meetDebtSupplier({required int id, required double payment});

  Future<Either<Failure, Unit>> addSupplierToArchive({required int id});

  Future<Either<Failure, Unit>> removeSupplierFromArchive({required int id});
}
