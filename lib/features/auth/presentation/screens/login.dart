import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:indigenous_plant/common/text_widget.dart';
import 'package:indigenous_plant/config/text_styles.dart';
import 'package:indigenous_plant/config/validations.dart';
import 'package:indigenous_plant/core/constants/app_colors.dart';
import 'package:indigenous_plant/core/constants/constants.dart';
import 'package:indigenous_plant/core/constants/extension.dart';
import 'package:indigenous_plant/core/widgets/round_button.dart';
import 'package:indigenous_plant/core/widgets/text_field.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/create_account.dart';
import '../../../../core/utils/utils.dart';
import '../../providers/auth_provider.dart';



class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});
  static const routeName = "/login-account";

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;
final _formKey = GlobalKey<FormState>();
  Future<void> login() async {
    try {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        setState(() => isLoading = true);
        await ref.read(authProvider).signIn(
              email: emailController.text,
              password: passwordController.text,
            );
        setState(() => isLoading = false);
      }
    } catch (e) {
      showToastMessage(text: e.toString());
    }
  }

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
              child: Form(
                key: _formKey,
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
                      style: ApptextStyles.kPrimaryStyle.copyWith(
                          fontSize: 14, color: AppColors.darkGreyColor),
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
                      validator: validateEmail,
                    ),
                    20.ht,
                    const ReusableText(
                      text: "Password",
                    ),
                    6.ht,
                    RoundTextField(
                      controller: passwordController,
                      hintText: "Enter Your Password",
                      textInputAction: TextInputAction.next,
                      validator: validatePassword,
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
                      onPressed: () {
                        login();
                      },
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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(CreateAccount.routeName);
                          },
                          child: const ReusableText(
                            text: "Register",
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
      ),
    );
  }
}
