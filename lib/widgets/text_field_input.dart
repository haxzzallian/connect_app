import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  String hintText;
  final TextInputType textInputType;
  TextFieldInput(
      {super.key,
      required this.hintText,
      this.isPass = false,
      required this.textEditingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      //controller: ,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(3),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
