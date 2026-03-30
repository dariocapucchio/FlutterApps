import 'package:flutter/material.dart';

class RecetaPrewiew extends StatelessWidget {
  
  final String Titulo;
  final String Duracion;
  final String ImagenURL;
  
  RecetaPrewiew({
    super.key,
    required this.Titulo,
    required this.Duracion,
    required this.ImagenURL,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(ImagenURL),
            Text(Titulo),
            Text(Duracion),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}