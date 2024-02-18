import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> registerUser(
      {required AuthBody authBody});

  Future<Either<Failure, UserCredential>> loginUser(
      {required AuthBody authBody});

  Future<Either<Failure, UserCredential?>> signInWithGoogle();
  Future<Either<Failure, UserCredential?>> signInWithFacebook();

  Future<Either<Failure, void>> addUserToFirestore({required CurrentUser user});
  Future<Either<Failure, CurrentUser>> getCurrentUser({required String uid});
  Future<Either<Failure, void>> resetPassword({required String email});
}
