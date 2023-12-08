// Future<Either<Failure,void>> updateProfileData
//({required Map<String, dynamic> updatedData});

import 'package:dartz/dartz.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class UpdateProfileDataUseCase
    implements BaseUseCase<void, Map<String, dynamic>> {
  final ProfileRepository profileRepository;

  UpdateProfileDataUseCase({required this.profileRepository});
  @override
  Future<Either<Failure, void>> call(Map<String, dynamic> params) {
    return profileRepository.updateProfileData(updatedData: params);
  }
}
