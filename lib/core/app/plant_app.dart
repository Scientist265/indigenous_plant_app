import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/core/config/routes.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/splash_screen.dart';
import 'package:indigenous_plant/shared/constants/storage_folders.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class PlantApp extends StatefulWidget {
  const PlantApp({super.key});

  @override
  State<PlantApp> createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  late StreamSubscription authSubscription;
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  @override
  void dispose() {
    authSubscription.cancel();
    super.dispose();
  }

  void _redirect() {
    authSubscription = supabase.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;

      print('event: $event, session: $session');

      switch (event) {
        case AuthChangeEvent.initialSession:
          // handle initial session
          print('Onboarding screen');
        case AuthChangeEvent.signedIn:
          // handle signed in
          print('Home screen');

        case AuthChangeEvent.signedOut:
          // handle signed out
          print('Login screen');

        case AuthChangeEvent.passwordRecovery:
        // handle password recovery
        case AuthChangeEvent.tokenRefreshed:
        // handle token refreshed
        case AuthChangeEvent.userUpdated:
        // handle user updated
        case AuthChangeEvent.userDeleted:
        // handle user deleted
        case AuthChangeEvent.mfaChallengeVerified:
        // handle mfa challenge verified
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.appTheme(),
            home: const SplashScreen(),
            onGenerateRoute: Routes.onGenerateRoute,
          );
        });
  }
}



       // home: StreamBuilder(
            //     stream: FirebaseAuth.instance.authStateChanges(),
            //     builder: ((context, snapshot) {
            //       final user = FirebaseAuth.instance.currentUser;
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Loader();
            //       }
            //       if (snapshot.hasData) {
            //         if (user!.emailVerified) {
            //           return const HomePage();
            //         } else {
            //           return const VerifyEmailScreen();
            //         }
            //       }
            //       return const LoginScreen();
            //     })),