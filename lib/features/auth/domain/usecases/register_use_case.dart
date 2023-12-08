import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:travelhub/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterUseCase implements BaseUseCase<UserCredential, AuthBody> {
  final AuthRepository authRepository;

  RegisterUseCase({required this.authRepository});
  @override
  Future<Either<Failure, UserCredential>> call(authBody) {
    return authRepository.registerUser(authBody: authBody);
  }
}
