import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:travelhub/core/firebase/auth.dart';
import 'package:travelhub/core/firebase/database.dart';
import 'package:travelhub/core/firebase/storage.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<String, Stream<TaskSnapshot>>> uploadFile({
    required String collectionName,
    required File file,
  });
  Future<void> updateProfileData({required Map<String, dynamic> updatedData});
  Future<void> updatePassword({required String newPassword});
  Future<UserCredential> reAuthWithCredential(
      {required String currentPassword});
  Future<void> deleteAccount();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final FirebaseMedia firebaseMedia;
  final FirebaseDatabase firebaseDatabase;
  final AuthViaFirebase authViaFirebase;

  ProfileRemoteDataSourceImpl({
    required this.firebaseMedia,
    required this.firebaseDatabase,
    required this.authViaFirebase,
  });
  @override
  Future<Either<String, Stream<TaskSnapshot>>> uploadFile(
      {required String collectionName, required File file}) {
    return firebaseMedia.uploadFile(
      collectionName: collectionName,
      file: file,
    );
  }

  @override
  Future<void> updateProfileData({required Map<String, dynamic> updatedData}) {
    return firebaseDatabase.updateProfileData(updatedData: updatedData);
  }

  @override
  Future<void> updatePassword({required String newPassword}) {
    return authViaFirebase.updatePassword(newPassword: newPassword);
  }

  @override
  Future<UserCredential> reAuthWithCredential(
      {required String currentPassword}) {
    return authViaFirebase.reAuthWithCredential(
        currentPassword: currentPassword);
  }

  @override
  Future<void> deleteAccount() {
    return authViaFirebase.deleteAccount();
  }
}
