import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential?> registerUser(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw handleFirebaseAuthException(e);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again.';
    }
  }

  Future<UserCredential?> loginUser(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw handleFirebaseAuthException(e);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again.';
    }
  }


Future<void> logoutUser() async {
    try {
      return await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw handleFirebaseAuthException(e);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again.';
    }
  }

Future<void> forgetPassword(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw handleFirebaseAuthException(e);
    } catch (e) {
      throw 'An unexpected error occurred. Please try again.';
    }
  }
}

 String handleFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'email-already-in-use':
        return 'This email is already in use. Please use a different one.';
      case 'weak-password':
        return 'The password is too weak. Please use a stronger password.';
      case 'user-not-found':
        return 'No user found with this email. Please register first.';
      case 'wrong-password':
        return 'The password is incorrect. Please try again.';
      default:
        return 'Authentication failed. Please try again.';
    }
  }

