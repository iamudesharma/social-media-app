import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_app/data/models/user_model.dart';

import '../firebase_controller.dart/firebase_controller.dart';

class PostsController extends GetxController {
  late File image;
  final ImagePicker _imagePicker = ImagePicker();
  //uploads post to the post collection
  uploadPost(File image, String location, String description) async {
    String link = await uploadImage(posts, image);
    DocumentSnapshot doc =
        await usersRef.doc(firebaseAuth.currentUser?.uid).get();

    var json = doc.data() as Map<String, dynamic>;
    UserModel user = UserModel.fromJson(json);

    var ref = postRef.doc();

    ref.set({
      "id": ref.id,
      "postId": ref.id,
      "username": user.username,
      "ownerId": firebaseAuth.currentUser?.uid,
      "mediaUrl": link,
      "description": description,
      "location": location,
      "timestamp": Timestamp.now(),
    });
  }

  Future<String> uploadImage(Reference ref, File file) async {
    String ext = getFileExtension(file);
    Reference storageReference = ref.child("${uuid.v4()}.$ext");
    UploadTask uploadTask = storageReference.putFile(file);
    await uploadTask.whenComplete(() => null);
    String fileUrl = await storageReference.getDownloadURL();
    return fileUrl;
  }

  String getFileExtension(File file) {
    List fileNameSplit = file.path.split(".");
    String extension = fileNameSplit.last;
    return extension;
  }

  Future<File?> pickImage() async {
    XFile? _image = await _imagePicker.pickImage(source: ImageSource.gallery);

    return File(_image!.path);
  }
}
