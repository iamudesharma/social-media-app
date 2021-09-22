import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/controller/firebase_controller.dart/firebase_controller.dart';

class LoginController extends GetxController {
  late StreamSubscription authstate;
  Rxn<User> user = Rxn<User>();
  var isloading = false.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  // final GlobalKey formKeylogin = GlobalKey<FormState>();
  // final GlobalKey<ScaffoldState> scaffoldkeylogin = GlobalKey();

  User? getCurrentUser() {
    User? user = firebaseAuth.currentUser;
    return user!;
  }

  Future<void> loginUser(String email, String password) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
              email: 'udesh2568@gmail.com', password: '12345678');
      print(userCredential.user?.email);

      if (userCredential.user != null) {
        isloading.value = false;
        print('user login True');
      }
    } catch (e) {
      print(e.toString());
      isloading.value = false;
    }
  }

  logOut() async {
    await firebaseAuth.signOut();
  }

  @override
  void onInit() {
    authstate = firebaseAuth.authStateChanges().listen((_user) {
      if (_user != null) {
        user.value = _user;
      }
    });
    // getCurrentUser();

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    authstate.cancel();
    super.onClose();
  }
}
