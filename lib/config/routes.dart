import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/create_account.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/verify_email_screen.dart';
import 'package:indigenous_plant/features/navbar/home/home_dart.dart';
import 'package:indigenous_plant/features/navbar/nav_bar.dart';
import 'package:indigenous_plant/features/navbar/home/search/category_search.dart';

import '../core/screens/error_screen.dart';
import '../core/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  splashRoute: (p0) => const SplashScreen(),
  signUpRoute: (p0) => const CreateAccount(),
  loginRoute: (p0) => const LoginScreen(),
  homeRoute: (p0) => const HomePage(),
  navBarRoute: (p0) => const NavBar(),
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
        return _cupertinoRoute(
          const HomePage(),
        );
      case LoginScreen.routeName:
        return _cupertinoRoute(
          const LoginScreen(),
        );
      case VerifyEmailScreen.routeName:
        return _cupertinoRoute(
          const VerifyEmailScreen(),
        );
      case CategorySearch.routeName:
        return _cupertinoRoute(
          const CategorySearch(),
        );

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
