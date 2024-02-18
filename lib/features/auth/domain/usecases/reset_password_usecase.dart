import 'package:dartz/dartz.dart';
import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/auth/domain/repositories/auth_repository.dart';

class ResetPasswordUsecase implements BaseUseCase<void, String> {
  final AuthRepository authRepository;

  ResetPasswordUsecase({required this.authRepository});
  @override
  Future<Either<Failure, void>> call(String email) {
    return authRepository.resetPassword(email: email);
  }
}
