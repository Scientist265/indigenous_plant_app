import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigenous_plant/config/routes.dart';
import 'package:indigenous_plant/core/constants/storage_folders.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:indigenous_plant/core/screens/loader.dart';
import 'package:indigenous_plant/core/screens/splash_screen.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/verify_email_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: PlantApp(),
    ),
  );
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

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
            home: StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: ((context, snapshot) {
                  final user = FirebaseAuth.instance.currentUser;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Loader();
                  }
                  if (snapshot.hasData) {
                    if (user!.emailVerified) {
                      return const SplashScreen();
                    } else {
                      return const VerifyEmailScreen();
                    }
                  }
                  return const LoginScreen();
                })),
            onGenerateRoute: Routes.onGenerateRoute,
          );
        });
  }
}
