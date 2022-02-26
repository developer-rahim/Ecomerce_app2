import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ViewLogicModel extends ChangeNotifier {
  var googleSingIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future googleLogin() async {
    var googleUser = await googleSingIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;
    var googleAuth = await googleUser.authentication;
    var Credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    await FirebaseAuth.instance.signInWithCredential(Credential);
    notifyListeners();
  }

  bool _isselected = true;
  bool get isselected => _isselected;

  void checkcolor() {
    _isselected = false;
    notifyListeners();
  }

  void checkcolor2() {
    _isselected = true;
    notifyListeners();
  }

  //Check Box''''
  var ischected = false;

  bool get _ischecked => ischected;

  checkbox1() {
    ischected = !ischected;
    notifyListeners();
  }

  var ischected2 = false;

  bool get _ischecked2 => ischected;

  checkbox2() {
    ischected2 = !ischected2;
    notifyListeners();
  }

//add cart
  bool _isTrue = true;
  var _count = 1;
  get isTrue => _isTrue;

  get count => _count;
  incriment() {
    _count++;
    notifyListeners();
  }

  decrement() {
    _count--;
    notifyListeners();
  }

  isfalse() {
    _isTrue = false;
    notifyListeners();
  }
}
