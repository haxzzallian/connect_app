import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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

            //textfield input for email
            SizedBox(
              height: 64,
            ),
            /* TextFieldInput(
              hintText: 'Enter your Email',
              textEditingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            //texfield input for password
            TextFieldInput(
              hintText: 'Enter your Password',
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
              //isPass: true,
            ),*/
            //button login
            //transitioning to sign up
          ],
        ),
      ),
    );
  }
}
