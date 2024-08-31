import 'dart:async';

import 'package:flutter/material.dart';
import 'package:indigenous_plant/core/config/routes.dart';
import 'package:indigenous_plant/core/config/text_styles.dart';
import 'package:indigenous_plant/shared/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed(signUpRoute),
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Text(
              "INDIGENOUS PLANTS",
              style: ApptextStyles.kHeaderStyle.copyWith(
                color: AppColors.neutralColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
