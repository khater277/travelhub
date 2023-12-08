import 'package:travelhub/core/base_usecase/base_usecase.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/auth/domain/repositories/auth_repository.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignInUseCase implements BaseUseCase<UserCredential?, NoParams> {
  final AuthRepository authRepository;

  GoogleSignInUseCase({required this.authRepository});
  @override
  Future<Either<Failure, UserCredential?>> call(NoParams params) {
    return authRepository.signInWithGoogle();
  }
}
