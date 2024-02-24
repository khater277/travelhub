import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource profileRemoteDataSource;
  final NetworkInfo networkInfo;

  ProfileRepositoryImpl(
      {required this.profileRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, Either<String, Stream<TaskSnapshot>>>> uploadFile({
    required String collectionName,
    required File file,
  }) async {
    if (await networkInfo.connected()) {
      try {
        final response = await profileRemoteDataSource.uploadFile(
          collectionName: collectionName,
          file: file,
        );
        return Right(response);
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.storage));
      }
    } else {
      final error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> updateProfileData(
      {required Map<String, dynamic> updatedData}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await profileRemoteDataSource.updateProfileData(
            updatedData: updatedData);
        return Right(response);
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      }
    } else {
      final error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword(
      {required String newPassword}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await profileRemoteDataSource.updatePassword(
            newPassword: newPassword);
        return Right(response);
      } on FirebaseAuthException catch (error) {
        print("===============>${error.toString()}");
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      final error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> reAuthWithCredential(
      {required String currentPassword}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await profileRemoteDataSource.reAuthWithCredential(
            currentPassword: currentPassword);
        return Right(response);
      } on FirebaseAuthException catch (error) {
        // print("===============>${error.}");
        print("===============>${error.toString()}");
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      final error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    if (await networkInfo.connected()) {
      try {
        final response = await profileRemoteDataSource.deleteAccount();
        return Right(response);
      } on FirebaseAuthException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      }
    } else {
      final error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }
}
