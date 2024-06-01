// ignore_for_file: public_member_api_docs, sort_constructors_firs
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/firebase_field_names.dart';

@immutable
class UserModel {
  final String fullName;
  final DateTime birthday;
  final String gender;
  final String email;
  final String password;
  final String profilePicUrl;
  final String uid;

  const UserModel({
    required this.fullName,
    required this.birthday,
    required this.gender,
    required this.email,
    required this.password,
    required this.profilePicUrl,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      FirebaseFieldNames.name: fullName,
      FirebaseFieldNames.birthDay: birthday,
      FirebaseFieldNames.gender: gender,
      FirebaseFieldNames.email: email,
      FirebaseFieldNames.password: password,
      FirebaseFieldNames.profilePicUrl: profilePicUrl,
      FirebaseFieldNames.uid: uid,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      fullName: map[FirebaseFieldNames.name] ?? "",
      birthday: DateTime.fromMillisecondsSinceEpoch(map['birthday'] ?? 0),
      gender: map[FirebaseFieldNames.gender] ?? "",
      email: map[FirebaseFieldNames.email] ?? "",
      password: map[FirebaseFieldNames.password] ?? "",
      profilePicUrl:
          map[FirebaseFieldNames.profilePicUrl] ?? Constants.profilePicBlank,
      uid: map[FirebaseFieldNames.uid] ?? "",
    );
  }
}
