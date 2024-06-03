import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:indigenous_plant/features/auth/models/user_model.dart';
import '../../../core/constants/firebase_collection_names.dart';
import '../../../core/constants/storage_folder_names.dart';
import '../../../core/utils/utils.dart';

class AuthRepository {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  // SignIn

  Future<UserCredential?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final credential = _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        showToastMessage(text: "Incorrect Password");
      } else if (e.code == "invalid-email") {
        showToastMessage(text: "Invalid email format");
      } else if (e.code == "operation-not-allowed") {
        showToastMessage(text: "Operation Not allowed");
      } else if (e.code == "user-not-found") {
        showToastMessage(text: "User not found");
      }
      print(e);
    }
    return null;
  }

  // Signout
  Future<String?> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      showToastMessage(text: e.toString());
    }
    return null;
  }

  // Register User

  Future<UserCredential?> createAccount({
    required String name,
    required String email,
    required String password,
    required String gender,
    required DateTime birthday,
    required File? image,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //Save image to Firebase

      final path = _storage
          .ref(StorageFolderNames.profilePics)
          .child(FirebaseAuth.instance.currentUser!.uid);

      if (image == null) {
        return null;
      }
      final taskSnapshot = await path.putFile(image);
      final downloadUrl = await taskSnapshot.ref.getDownloadURL();
      // final uid = const Uuid().v1();

      UserModel user = UserModel(
        fullName: name,
        birthday: birthday,
        gender: gender,
        email: email,
        password: password,
        profilePicUrl: downloadUrl,
        uid: _auth.currentUser!.uid,
      );

      await _firestore
          .collection(FirebaseCollectionNames.users)
          .doc(_auth.currentUser!.uid)
          .set(
            user.toMap(),
          );

      return credential;
    } on FirebaseAuthException catch (e) {
      //  From Firebaseauth exception code
      if (e.code == 'weak-password') {
        showToastMessage(text: "The password is too weak");
      } else if (e.code == "email-already-in-use") {
        showToastMessage(text: "This email address has already been register");
      } else if (e.code == "invalid-email") {
        showToastMessage(text: "Invalid email format");
      } else if (e.code == "operation-not-allowed") {
        showToastMessage(text: "Operation Not allowed");
      } else if (e.code == "user-not-found") {
        showToastMessage(text: "User not found");
      }
      print(e);
    }
    return null;
  }

  // Verify Email
  Future<String?> verifyEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    try {
      if (user != null) {
        user.sendEmailVerification();
      }
    } catch (e) {
      showToastMessage(text: e.toString());
    }
    return null;
  }

  // get- user info

  Future<UserModel> getUserInfo() async {
    final userData = await _firestore
        .collection(FirebaseCollectionNames.users)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    final user = UserModel.fromMap(userData.data()!);
    return user;
  }
}
