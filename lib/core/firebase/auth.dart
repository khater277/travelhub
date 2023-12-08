import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/features/auth/data/models/auth_body/body/auth_body.dart';

abstract class AuthViaFirebase {
  Future<UserCredential> createUserWithEmail({required AuthBody authBody});
  Future<UserCredential> signInUserWithEmail({required AuthBody authBody});
  Future<UserCredential?> signInWithGoogle();
  Future<UserCredential?> signInWithFacebook();
  Future<UserCredential> reAuthWithCredential(
      {required String currentPassword});
  Future<void> updatePassword({required String newPassword});
}

class AuthViaFirebaseImpl implements AuthViaFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<UserCredential> createUserWithEmail(
      {required AuthBody authBody}) async {
    return await _auth.createUserWithEmailAndPassword(
      email: authBody.email,
      password: authBody.password,
    );
  }

  @override
  Future<UserCredential> signInUserWithEmail(
      {required AuthBody authBody}) async {
    // _auth
    //     .signInWithEmailAndPassword(
    //       email: authBody.email,
    //       password: authBody.password,
    //     )
    //     .then((value) => print(value))
    //     .catchError((error) => print("====>${error.toString()}"));
    return _auth.signInWithEmailAndPassword(
      email: authBody.email,
      password: authBody.password,
    );
  }

  @override
  Future<UserCredential?> signInWithFacebook() async {
    UserCredential? userCredential;
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      debugPrint("=====================>$facebookAuthCredential");
      return _auth.signInWithCredential(facebookAuthCredential);
    } catch (error) {
      debugPrint("============123=========>$userCredential");
      return userCredential;
    }
  }

  @override
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    UserCredential? userCredential;
    try {
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );
      return _auth.signInWithCredential(credential);
    } catch (error) {
      return userCredential;
    }
  }

  @override
  Future<void> updatePassword({required String newPassword}) {
    return _auth.currentUser!.updatePassword(newPassword);
  }

  @override
  Future<UserCredential> reAuthWithCredential(
      {required String currentPassword}) async {
    final user = _auth.currentUser;
    final cred = EmailAuthProvider.credential(
      email: locator<UserStorage>().getData(id: HiveKeys.currentUser)!.email!,
      password: currentPassword,
    );
    return user!.reauthenticateWithCredential(cred);
  }
}
