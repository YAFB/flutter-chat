import 'package:flutter/material.dart';

class CustomImput extends StatelessWidget {
  final IconData icono;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyBoardType;
  final bool isPassword;

  const CustomImput({
    super.key,
    required this.icono,
    required this.placeholder,
    required this.textController,
    this.keyBoardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
            blurRadius: 5,
          )
        ],
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        obscureText: isPassword,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icono),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
