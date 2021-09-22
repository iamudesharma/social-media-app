import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:social_media_app/controller/firebase_controller.dart/firebase_controller.dart';

class CreateAccoutController extends GetxController {
  var isloading = false.obs;

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController usernameContoller;

  final GlobalKey formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  // User? getCurrentUser() {
  //   User? user = firebaseAuth.currentUser;
  //   return user!;
  // }

  Future<void> createUser( 
      {String? name, String? email, String? password}) async {
    try {
      isloading.value = true;
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email!, password: password!);

      if (userCredential.user != null) {
        await saveUserToFirestore(
          email: email,
          name: name,
          user: userCredential.user,
        );
        isloading.value = false;
      }
    } catch (e) {
      isloading.value = false;
    }
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

  @override
  void onInit() {
    usernameContoller = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    usernameContoller.dispose();
    emailController.dispose();
    usernameContoller.dispose();
    super.onClose();
  }

  // Future<void> loginUser(String email, String password) async {
  //   try {
  //     isloading.value = true;
  //     UserCredential userCredential = await firebaseAuth
  //         .signInWithEmailAndPassword(email: email, password: password);

  //     if (userCredential.user != null) {
  //       isloading.value = false;
  //       print('user login True');
  //     }
  //   } catch (e) {
  //     isloading.value = false;
  //   }
  // }

  // logOut() async {
  //   await firebaseAuth.signOut();
  // }

}
