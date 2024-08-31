import 'package:flutter/cupertino.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/create_account.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/home/home_dart.dart';
import 'package:indigenous_plant/core/app/root_app.dart';

import '../../shared/views/error_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  splashRoute: (p0) => const SplashScreen(),
  signUpRoute: (p0) => const CreateAccount(),
  loginRoute: (p0) => const LoginScreen(),
  homeRoute: (p0) => const HomePage(),
  navBarRoute: (p0) => const RootApp(),
};

String homeRoute = "/home_route";
String authRoute = "/auth_route";
String loginRoute = "/login_route";
String signUpRoute = "/sign_up_route";
String splashRoute = "/splash_route";
String navBarRoute = "/nav_bar";

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CreateAccount.routeName:
        return _cupertinoRoute(const CreateAccount());
      case HomePage.routeName:
        return _cupertinoRoute(const HomePage());

      default:
        return _cupertinoRoute(
          ErrorScreen(
            error: 'Wrong Route provided ${settings.name}',
          ),
        );
    }
  }

  static Route _cupertinoRoute(Widget view) => CupertinoPageRoute(
        builder: (_) => view,
      );

  Routes._();
}
