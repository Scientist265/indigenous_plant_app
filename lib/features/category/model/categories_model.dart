// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs, sort_constructors_firs
import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/firebase_field_names.dart';

@immutable
class CategoryModel {
  final String plantName;
  // final String yorubaName;
  final String desc;
  final String economicValue;
  final String localValue;
  final String habitat;
  final String plantId;
  final DateTime datePosted;
  const CategoryModel({
    required this.plantName,
    required this.desc,
    required this.economicValue,
    required this.localValue,
    required this.habitat,
    required this.plantId,
    required this.datePosted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plantName': plantName,
      'desc': desc,
      'economicValue': economicValue,
      'localValue': localValue,
      'habitat': habitat,
      'plantId': plantId,
      'datePosted': datePosted.millisecondsSinceEpoch,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      plantName: map['plantName'] as String,
      desc: map['desc'] as String,
      economicValue: map['economicValue'] as String,
      localValue: map['localValue'] as String,
      habitat: map['habitat'] as String,
      plantId: map['plantId'] as String,
      datePosted: DateTime.fromMillisecondsSinceEpoch(map['datePosted'] as int),
    );
  }
}
