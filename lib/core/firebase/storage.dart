import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class FirebaseMedia {
  Future<Either<String, Stream<TaskSnapshot>>> uploadFile({
    required String collectionName,
    required File file,
  });
}

class FirebaseMediaImpl implements FirebaseMedia {
  final _storage = FirebaseStorage.instance;
  @override
  Future<Either<String, Stream<TaskSnapshot>>> uploadFile({
    required String collectionName,
    required File file,
  }) async {
    final reference = _storage
        .ref("$collectionName/${Uri.file(file.path).pathSegments.last}");
    try {
      final result = await reference.getDownloadURL();
      return Left(result);
    } on FirebaseException {
      final result = _storage
          .ref("$collectionName/${Uri.file(file.path).pathSegments.last}")
          .putFile(file)
          .snapshotEvents;
      return Right(result);
    }
  }
}
