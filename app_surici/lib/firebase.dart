import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    var myUser = await user.user;

    try {
      return user.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak password') {
        debugPrint("weak pass");
      } else if (e.code == 'wrong-password') {
        debugPrint("wrong pass");
      } else if (e.code == 'user-not-found') {
        debugPrint("register again");
      } else if (e.code == 'invalid-email') {
        debugPrint("check email");
      } else if (e.code == 'invalid-credential') {
        debugPrint("invalid credential");
      } else {}
      debugPrint(_auth.currentUser.toString());
    }
  }

  logOut() async {
    return await _auth.signOut();
  }

  Future<User?> register(
    String email,
    String password,
  ) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    try {
      return user.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak password') {
        debugPrint("weak password try again");
      } else if (e.code == 'email-already-in-use') {
        debugPrint("email is already in use");
      } else {
        debugPrint("Please Try Again");
      }
      debugPrint(_auth.currentUser.toString());
    }
  }
}
