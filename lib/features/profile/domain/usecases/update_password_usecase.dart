// uture<Either<Failure, void>> updatePassword(
//       {required String password});
import 'package:dartz/dartz.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class UpdatePasswordUseCase implements BaseUseCase<void, String> {
  final ProfileRepository profileRepository;

  UpdatePasswordUseCase({required this.profileRepository});
  @override
  Future<Either<Failure, void>> call(String newPassword) {
    return profileRepository.updatePassword(newPassword: newPassword);
  }
}
