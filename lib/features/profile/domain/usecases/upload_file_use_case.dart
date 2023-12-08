import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class UploadFileParameters {
  final String collectionName;
  final File file;

  UploadFileParameters({required this.collectionName, required this.file});
}

class UploadFileUseCase
    implements
        BaseUseCase<Either<String, Stream<TaskSnapshot>>,
            UploadFileParameters> {
  final ProfileRepository profileRepository;

  UploadFileUseCase({required this.profileRepository});

  @override
  Future<Either<Failure, Either<String, Stream<TaskSnapshot>>>> call(
      UploadFileParameters params) {
    return profileRepository.uploadFile(
      collectionName: params.collectionName,
      file: params.file,
    );
  }
}
