import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    super.key,
    required this.ruta,
    required this.pregunta,
    required this.textoBoton,
  });

  final String ruta;
  final String pregunta;
  final String textoBoton;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            pregunta,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(ruta);
            },
            child: Text(
              textoBoton,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
