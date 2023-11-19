import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  const BotonAzul({
    super.key,
    required this.texto,
    required this.onPressed,
  });

  final String texto;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
