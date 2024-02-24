import 'package:dartz/dartz.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:travelhub/features/profile/domain/repository/profile_repository.dart';

class DeleteAccountUsecase implements BaseUseCase<void, NoParams> {
  final ProfileRepository profileRepository;

  DeleteAccountUsecase({required this.profileRepository});
  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return profileRepository.deleteAccount();
  }
}
