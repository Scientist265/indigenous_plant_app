import 'package:flutter/material.dart';
import 'package:indigenous_plant/common/text_widget.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/core/widgets/round_button.dart';
import 'package:indigenous_plant/core/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.realWhiteColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: Constants.defaultPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    text: "Log In",
                    fontSizing: 25,
                    weight: FontWeight.bold,
                  ),
                  6.ht,
                  Text(
                    "Login To Your Account",
                    style: ApptextStyles.kPrimaryStyle
                        .copyWith(fontSize: 14, color: AppColors.darkGreyColor),
                  ),
                  20.ht,
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: MediaQuery.of(context).size.width * .5,
                      width: MediaQuery.of(context).size.width * .5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/authImage.png"),
                        ),
                      ),
                    ),
                  ),
                  const ReusableText(
                    text: "Email",
                  ),
                  6.ht,
                  RoundTextField(
                    controller: emailController,
                    hintText: "joejohn@gmail.com",
                    textInputAction: TextInputAction.next,
                  ),
                  20.ht,
                  const ReusableText(
                    text: "Password",
                  ),
                  6.ht,
                  RoundTextField(
                    controller: emailController,
                    hintText: "Enter Your Password",
                    textInputAction: TextInputAction.next,
                  ),
                  10.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: ApptextStyles.kPrimaryStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.tealColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  40.ht,
                  RoundButton(
                    onPressed: () {},
                    label: "Sign In",
                  ),
                  10.ht,
                  const Center(
                    child: ReusableText(
                      text: "Or",
                      textColor: AppColors.blackColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                  10.ht,
                  GoogleSignButton(
                      onPressed: () {}, label: "Sign In with Google"),
                  50.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const ReusableText(
                        text: "Don't have account?",
                        textColor: AppColors.darkGreyColor,
                      ),
                      6.wt,
                      const ReusableText(
                        text: "Register",
                        textColor: AppColors.tealColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
