import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});
final checkboxProvider = StateProvider<bool>((ref) => true);

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale("en"));
   switchLocale(String language) {
    state = Locale(language);
  }
}
