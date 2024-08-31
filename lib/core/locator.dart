import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../firebase_options.dart';
import 'config/env.dart';
import 'logger.dart';

class Sl {
  static final GetIt get = GetIt.instance;
  Sl._();

  void close() {
    get.reset();
  }

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await ScreenUtil.ensureScreenSize();

    Env.init();
    _initSupabase();
    _initSupabaseClient();
    // _initFirebaseService();
    _initRepos();
    _initHandlers();
  }

  static void _initRepos() {
    // get.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
    Logger.info(location: 'Sl', message: 'Repositories Init');
  }

  static void _initSupabaseClient() {
    get.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

    Logger.info(location: 'Sl', message: 'SupabaseClient Init');
  }

  static void _initHandlers() {
    // get.registerLazySingleton<SnackbarHandler>(() => SnackbarHandlerImpl());
    Logger.info(location: 'Sl', message: 'Handlers Init');
  }

  static void _initSupabase() {
    Supabase.initialize(
      url: env.supabaseUrl,
      anonKey: env.anonKey,
    );

    Logger.info(location: 'Sl', message: 'Supabase Init');
  }

  static void _initFirebaseService() {
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    Logger.info(location: 'Sl', message: 'Firebase Init');
  }
}
