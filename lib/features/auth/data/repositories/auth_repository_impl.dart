import 'package:travelhub/app/app.dart';
import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/network/network_info.dart';
import 'package:travelhub/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';
import 'package:travelhub/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NetworkInfo networkInfo;
  final AuthRemoteDataSource authRemoteDataSource;
  final UserStorage userStorage;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.networkInfo,
    required this.userStorage,
  });

  /// REGISTER
  @override
  Future<Either<Failure, UserCredential>> registerUser(
      {required AuthBody authBody}) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await authRemoteDataSource.registerUser(authBody: authBody);

        final user = CurrentUser(
          uid: response.user!.uid,
          token: await response.user!.getIdToken(),
          name: authBody.name,
          email: response.user!.email,
          image: response.user!.photoURL,
        );
        final addUser = await addUserToFirestore(user: user);
        addUser.fold((failure) {
          return Left(failure);
        }, (success) async {
          userStorage.saveData(id: HiveKeys.currentUser, data: user);
          await Sp.sp!.setBool('login', true);
        });
        return Right(response);
      } on FirebaseAuthException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  /// LOGIN
  @override
  Future<Either<Failure, UserCredential>> loginUser(
      {required AuthBody authBody}) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await authRemoteDataSource.loginUser(authBody: authBody);
        final user = await getCurrentUser(uid: response.user!.uid);
        user.fold(
          (failure) {
            return Left(failure);
          },
          (currentUser) async {
            userStorage.saveData(id: HiveKeys.currentUser, data: currentUser);
            await Sp.sp!.setBool('login', true);
            debugPrint("WELCOME ${currentUser.name}");
          },
        );
        return Right(response);
      } on FirebaseAuthException catch (error) {
        print("=========>>>${error.toString()}");
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, UserCredential?>> signInWithGoogle() async {
    if (await networkInfo.connected()) {
      try {
        final response = await authRemoteDataSource.signInWithGoogle();
        if (response != null) {
          final getUser = await getCurrentUser(uid: response.user!.uid);
          getUser.fold(
            (failure) async {
              debugPrint("USER DOESN'T EXIST");
              final user = CurrentUser(
                uid: response.user!.uid,
                token: await response.user!.getIdToken(),
                name: response.user!.displayName,
                email: response.user!.email,
                image: response.user!.photoURL,
              );
              final addUser = await addUserToFirestore(user: user);
              addUser.fold((failure) {
                return Left(failure);
              }, (success) async {
                userStorage.saveData(id: HiveKeys.currentUser, data: user);
                await Sp.sp!.setBool('login', true);
              });
            },
            (currentUser) async {
              debugPrint("USER ALREADY EXIST");
              userStorage.saveData(id: HiveKeys.currentUser, data: currentUser);
              await Sp.sp!.setBool('login', true);
            },
          );
          return Right(response);
        } else {
          FirebaseAuthException exception =
              FirebaseAuthException(code: 'request-cancelled');
          return Left(
              ServerFailure(error: exception, type: NetworkErrorTypes.auth));
        }
      } on FirebaseAuthException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, UserCredential?>> signInWithFacebook() async {
    if (await networkInfo.connected()) {
      try {
        final response = await authRemoteDataSource.signInWithFacebook();
        if (response != null) {
          final getUser = await getCurrentUser(uid: response.user!.uid);
          getUser.fold(
            (failure) async {
              debugPrint("USER DOESN'T EXIST");
              final user = CurrentUser(
                uid: response.user!.uid,
                token: await response.user!.getIdToken(),
                name: response.user!.displayName,
                email: response.user!.email,
                image: response.user!.photoURL,
              );
              final addUser = await addUserToFirestore(user: user);
              addUser.fold((failure) {
                return Left(failure);
              }, (success) async {
                userStorage.saveData(id: HiveKeys.currentUser, data: user);
                await Sp.sp!.setBool('login', true);
              });
            },
            (currentUser) async {
              debugPrint("USER ALREADY EXIST");
              userStorage.saveData(id: HiveKeys.currentUser, data: currentUser);
              await Sp.sp!.setBool('login', true);
            },
          );
          return Right(response);
        } else {
          FirebaseAuthException exception =
              FirebaseAuthException(code: 'request-cancelled');
          return Left(
              ServerFailure(error: exception, type: NetworkErrorTypes.auth));
        }
      } on FirebaseAuthException catch (error) {
        debugPrint("A7A");
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> addUserToFirestore(
      {required CurrentUser user}) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await authRemoteDataSource.addUserToFirestore(user: user);
        return Right(response);
      } on FirebaseAuthException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, CurrentUser>> getCurrentUser(
      {required String uid}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await authRemoteDataSource.getCurrentUser(uid: uid);
        return Right(response);
      } on FirebaseAuthException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      } on FirebaseException catch (error) {
        return Left(
            ServerFailure(error: error, type: NetworkErrorTypes.firestore));
      } catch (error) {
        return Left(ServerFailure(
            error:
                FirebaseException(plugin: '', code: 'no-internet-connection'),
            type: NetworkErrorTypes.firestore));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({required String email}) async {
    if (await networkInfo.connected()) {
      try {
        final response = await authRemoteDataSource.resetPassword(email: email);
        return Right(response);
      } on FirebaseAuthException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.auth));
      }
    } else {
      FirebaseException error =
          FirebaseException(plugin: '', code: 'no-internet-connection');
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.firestore));
    }
  }
}
