// ignore_for_file: public_member_api_docs, sort_constructors_firs
import 'package:flutter/material.dart';

import '../../../core/constants/firebase_field_names.dart';

@immutable
class UserModel {
  final String uid;
  final String fullName;
  final String email;
  final String password;


  const UserModel({
    required this.fullName,
    required this.email,
    required this.password,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      FirebaseFieldNames.name: fullName,
      
   
      FirebaseFieldNames.email: email,
      FirebaseFieldNames.password: password,
      FirebaseFieldNames.uid: uid,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      fullName: map[FirebaseFieldNames.name] ?? "",
      email: map[FirebaseFieldNames.email] ?? "",
      password: map[FirebaseFieldNames.password] ?? "",
      uid: map[FirebaseFieldNames.uid] ?? "",
    );
  }
}
