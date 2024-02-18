import 'package:travelhub/core/apis/booking/booking_api.dart';
import 'package:travelhub/core/firebase/auth.dart';
import 'package:travelhub/core/firebase/database.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';
import 'package:travelhub/features/auth/data/models/current_user/current_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredential> registerUser({required AuthBody authBody});
  Future<UserCredential> loginUser({required AuthBody authBody});
  Future<void> addUserToFirestore({required CurrentUser user});
  Future<CurrentUser> getCurrentUser({required String uid});
  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInWithFacebook();
  Future<void> resetPassword({required String email});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final BookingApi bookingApi;
  final AuthViaFirebase authViaFirebase;
  final FirebaseDatabase firebaseDatabase;

  AuthRemoteDataSourceImpl({
    required this.bookingApi,
    required this.authViaFirebase,
    required this.firebaseDatabase,
  });

  /// REGISTER
  @override
  Future<UserCredential> registerUser({required AuthBody authBody}) {
    return authViaFirebase.createUserWithEmail(authBody: authBody);
  }

  /// LOGIN
  @override
  Future<UserCredential> loginUser({required AuthBody authBody}) {
    return authViaFirebase.signInUserWithEmail(authBody: authBody);
  }

  @override
  Future<void> addUserToFirestore({required CurrentUser user}) {
    return firebaseDatabase.addUserToFirestore(user: user);
  }

  @override
  Future<CurrentUser> getCurrentUser({required String uid}) async {
    return firebaseDatabase.getCurrentUser(uid: uid);
  }

  @override
  Future<UserCredential?> signInWithGoogle() {
    return authViaFirebase.signInWithGoogle();
  }

  @override
  Future<UserCredential?> signInWithFacebook() {
    return authViaFirebase.signInWithFacebook();
  }

  @override
  Future<void> resetPassword({required String email}) {
    return authViaFirebase.resetPassword(email: email);
  }
}
