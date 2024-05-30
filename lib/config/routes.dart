import 'package:flutter/material.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/create_account.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/navbar/presentation/screens/home/home_dart.dart';
import 'package:indigenous_plant/features/navbar/presentation/widgets/nav_bar.dart';

import '../features/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  splashRoute: (p0) => const SplashScreen(),
  signUpRoute: (p0) => const CreateAccount(),
  loginRoute: (p0) => const LoginScreen(),
  homeRoute: (p0) => const HomePage(),
  navBarRoute:(p0) => const NavBar(),
};

String homeRoute = "/home_route";
String authRoute = "/auth_route";
String loginRoute = "/login_route";
String signUpRoute = "/sign_up_route";
String splashRoute = "/splash_route";
String navBarRoute = "/nav_bar";
