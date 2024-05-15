import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/sizing.dart';
import '../../../../core/screens/loader.dart';
import '../../../../core/widgets/round_button.dart';
import '../../../../core/widgets/text_field.dart';
import '../../utils/utils.dart';
import '../widgets/birthday_picker.dart';
import '../widgets/gender_picker.dart';

final _formKey = GlobalKey<FormState>();

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  static const routeName = "/create-account";

  @override
  ConsumerState<CreateAccountScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
  // File? image;
  String gender = "male";
  DateTime? birthday;
  bool isLoading = false;
  // controllers
  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _fNameController.dispose();
    _lNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Future<void> createAccount() async {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();
  //     setState(() {
  //       isLoading = true;
  //     });
  //     await ref
  //         .read(authProvider)
  //         .createAccount(
  //           fullName: "${_fNameController.text} ${_lNameController.text}",
  //           birthday: birthday ?? DateTime.now(),
  //           gender: gender,
  //           email: _emailController.text,
  //           password: _passwordController.text,
  //           // image: image,
  //         )
  //         .then((credential) {
  //       if (!credential!.user!.emailVerified) {
  //         showToastMessage(text: "Account created succesfully");
  //         Navigator.pop(context);
  //       }
  //     }).catchError((_) {
  //       setState(() => isLoading = false);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.realWhiteColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    // image = await pickImage();
                    setState(() {});
                  },
                  // child: PickImageWidget(
                  //   image: image,
                  // ),
                ),
                gaph20,
                Row(
                  children: [
                    Expanded(
                      child: RoundTextField(
                        controller: _fNameController,
                        hintText: "First Name",
                        textInputAction: TextInputAction.next,
                        validator: validateName,
                      ),
                    ),
                    gapW8,
                    Expanded(
                      child: RoundTextField(
                        controller: _lNameController,
                        hintText: "Last Name",
                        textInputAction: TextInputAction.next,
                        validator: validateName,
                      ),
                    ),
                  ],
                ),
                gaph20,
                BirthdayPickerWidget(
                  dateTime: birthday ?? DateTime.now(),
                  onPressed: () async {
                    birthday = await pickSimpleDate(
                      context: context,
                      date: birthday,
                    );
                    setState(() {});
                  },
                ),
                gaph20,
                GenderPicker(
                    gender: gender,
                    onChanged: (value) {
                      gender = value ?? "male";
                      setState(() {});
                    }),
                gaph20,
                RoundTextField(
                  controller: _emailController,
                  hintText: "Email",
                  textInputAction: TextInputAction.next,
                  validator: validateEmail,
                  keyBoardType: TextInputType.emailAddress,
                ),
                gaph20,
                RoundTextField(
                  controller: _passwordController,
                  hintText: "Password",
                  textInputAction: TextInputAction.done,
                  validator: validatePassword,
                  isPassword: true,
                  keyBoardType: TextInputType.visiblePassword,
                ),
                gaph20,
                isLoading
                    ? const Center(
                        child: Loader(),
                      )
                    : RoundButton(
                        label: "Create Account",
                       onPressed: (){},
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
