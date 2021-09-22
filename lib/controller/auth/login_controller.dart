import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/controller/firebase_controller.dart/firebase_controller.dart';

class LoginController extends GetxController {
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

  saveUserToFirestore({
    String? name,
    User? user,
    String? email,
  }) async {
    await usersRef.doc(user?.uid).set({
      "username": name,
      "email": email,
      "time": Timestamp.now(),
      "id": "",
      'photoUrl': user?.photoURL ?? ''
    });
  }

  Future<void> loginUser(String email, String password) async {
    try {
      isloading.value = true;
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        isloading.value = false;
        print('user login True');
      }
    } catch (e) {
      isloading.value = false;
    }
  }

  logOut() async {
    await firebaseAuth.signOut();
  }

  @override
  void onInit() {
    firebaseAuth.authStateChanges().listen((_user) {
      if (_user != null) {
        user.value = _user;
      }
    });
    // getCurrentUser();

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
}
