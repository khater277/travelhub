import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class ReAuthWithCredentialUseCase
    implements BaseUseCase<UserCredential, String> {
  final ProfileRepository profileRepository;

  ReAuthWithCredentialUseCase({required this.profileRepository});
  @override
  Future<Either<Failure, UserCredential>> call(String currentPassword) {
    return profileRepository.reAuthWithCredential(
        currentPassword: currentPassword);
  }
}
