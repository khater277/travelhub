import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/firebase/collections_keys.dart';
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
  Future<void> resetPassword({required String email});
  Future<void> deleteAccount();
}

class AuthViaFirebaseImpl implements AuthViaFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
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

  @override
  Future<void> resetPassword({required String email}) {
    return _auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> deleteAccount() async {
    await _auth.currentUser!.delete();
    final bookingDocs = await _fireStore
        .collection(Collections.users)
        .doc(locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid!)
        .collection(Collections.bookings)
        .get();

    if (bookingDocs.docs.isNotEmpty) {
      for (var doc in bookingDocs.docs) {
        doc.reference.delete();
      }
    }

    await _fireStore
        .collection(Collections.users)
        .doc(locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid!)
        .delete();
  }
}
