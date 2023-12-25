import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  //double heightBtwInput = 14;
  final spaceBtwInput = const SizedBox(
    height: 14,
  );
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              //svg email
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),

              const SizedBox(
                height: 64,
              ),

              //textfield input for username
              TextFieldInput(
                hintText: 'Enter your Username',
                textEditingController: _usernameController,
                textInputType: TextInputType.text,
              ),
              spaceBtwInput,

              //textfield input for email
              TextFieldInput(
                hintText: 'Enter your Email',
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              spaceBtwInput,
              //texfield input for password
              TextFieldInput(
                hintText: 'Enter your Password',
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                isPass: true,
              ),
              spaceBtwInput,
              //textfield input for username
              TextFieldInput(
                hintText: 'Enter your Bio',
                textEditingController: _bioController,
                textInputType: TextInputType.text,
              ),
              spaceBtwInput,
              //button login
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor,
                  ),
                  child: Text('Login'),
                ),
              ),

              //transitioning to sign up
              const SizedBox(
                height: 14,
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
                    child: const Text('Don\'t have an account ?  '),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 8),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
