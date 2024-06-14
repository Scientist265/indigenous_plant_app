import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indigenous_plant/core/app/plant_app.dart';

import 'core/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Sl.init();
  runApp(
    DevicePreview(
      enabled: false,
      // Added a boolean to enable/disable device preview
      builder: (context) {
        return const ProviderScope(
          child: PlantApp(),
        );
      },
    ),
  );
}
