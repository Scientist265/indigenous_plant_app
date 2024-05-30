import 'package:flutter/material.dart';
import 'package:indigenous_plant/common/text_widget.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/core/widgets/round_button.dart';
import 'package:indigenous_plant/core/widgets/text_field.dart';

import '../../../../config/routes.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPassword = false;

  @override
  void dispose() {
    nameController.dispose();
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
                    text: "Register",
                    fontSizing: 25,
                    weight: FontWeight.bold,
                  ),
                  6.ht,
                  Text(
                    "Create Your Account",
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
                  GoogleSignButton(
                      onPressed: () {}, label: "Sign In with Google"),
                  10.ht,
                  const Center(
                    child: ReusableText(
                      text: "Or",
                      textColor: AppColors.blackColor,
                      weight: FontWeight.bold,
                    ),
                  ),
                  10.ht,
                  const ReusableText(
                    text: "Name",
                  ),
                  6.ht,
                  RoundTextField(
                    controller: nameController,
                    hintText: "Joe John",
                    textInputAction: TextInputAction.next,
                  ),
                  20.ht,
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
                    isPassword: isPassword,
                    suffixicon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword ? Icons.visibility : Icons.visibility_off,
                        color: isPassword
                            ? AppColors.darkGreyColor
                            : AppColors.tealColor,
                      ),
                    ),
                    controller: passwordController,
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
                    label: "Sign Up",
                  ),
                  50.ht,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const ReusableText(
                        text: "Already have an account?",
                        textColor: AppColors.darkGreyColor,
                      ),
                      6.wt,
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(loginRoute);
                        },
                        child: const ReusableText(
                          text: "Log In",
                          textColor: AppColors.tealColor,
                        ),
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
