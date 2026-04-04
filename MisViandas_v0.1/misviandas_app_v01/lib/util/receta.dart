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
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              ImagenURL,
              height: 300,
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  
                  Text(Titulo),
                  Text(Duracion),
                ],
              ),
            ),
          ],
        ),
        
      ),
      
     
    );
  }
}