import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:travelhub/core/errors/failures.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Either<String, Stream<TaskSnapshot>>>> uploadFile({
    required String collectionName,
    required File file,
  });
  Future<Either<Failure, void>> updateProfileData(
      {required Map<String, dynamic> updatedData});
  Future<Either<Failure, void>> updatePassword({required String newPassword});
  Future<Either<Failure, UserCredential>> reAuthWithCredential(
      {required String currentPassword});
}
