import 'package:belladona_app_v01/pages/home_page.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset('assets/logo.png'),
        
            const SizedBox(height: 48),
        
            //Title
            const Text(
              'Diseño, Calidad y Amor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
        
            const SizedBox(height: 24),
        
            // Subtitulo
            const Text(
              'Diseños únicos de primera calidad que ofrecen algo distinto pensando en cada mujer.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 48),

            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(20),
                child: const Center(
                  child: Text(
                    'Ir a la tienda',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}