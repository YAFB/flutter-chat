import 'package:flutter/material.dart';

import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';

import '../widgets/boton_azul.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(titulo: "Registro"),
                _form(),
                const Labels(
                  ruta: "login",
                  pregunta: "¿Ya tienes cuenta?",
                  textoBoton: "Ingresa ahora",
                ),
                const Text(
                  "Terminos y condiciones de uso",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _form extends StatefulWidget {
  @override
  State<_form> createState() => __formState();
}

class __formState extends State<_form> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomImput(
            icono: Icons.person,
            placeholder: "Nombre",
            keyBoardType: TextInputType.name,
            textController: nameController,
          ),
          CustomImput(
            icono: Icons.mail,
            placeholder: "Correo",
            keyBoardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustomImput(
            icono: Icons.lock_outline,
            placeholder: "Contraseña",
            keyBoardType: TextInputType.visiblePassword,
            textController: passController,
            isPassword: true,
          ),
          BotonAzul(
            texto: "Registrar",
            onPressed: () {
              print(emailController.text);
              print(passController.text);
            },
          ),
        ],
      ),
    );
  }
}
