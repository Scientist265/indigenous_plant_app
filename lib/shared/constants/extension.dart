import 'package:flutter/material.dart';
// import 'package:jiffy/jiffy.dart';

// extension FormatDate on DateTime {
//   String yMMMEd() => Jiffy.parseFromDateTime(this).yMMMEd;
// }

// extension FormatDate2 on DateTime {
//   String jm() => Jiffy.parseFromDateTime(this).jm;
// }

// extension FromNow on DateTime {
//   String fromNow() => Jiffy.parseFromDateTime(this).fromNow();
// }

extension IntExtensions on int? {
  /// validate given int is not null return given value if null
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get ht => SizedBox(
        height: this?.toDouble(),
      );
  Widget get wt => SizedBox(
        width: this?.toDouble(),
      );
}
