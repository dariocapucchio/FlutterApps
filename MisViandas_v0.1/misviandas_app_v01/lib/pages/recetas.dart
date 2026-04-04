import 'package:flutter/material.dart';
import 'package:misviandas_app_v01/util/receta.dart';

class Recetas extends StatefulWidget {
  @override
  _RecetasState createState() => _RecetasState();
}

class _RecetasState extends State<Recetas> {

  // Imagen - Titutlo - Duracion
  List recetaList = [
    [
      "Milanesas con pure",
      "20-25min",
      "https://cuk-it.com/wp-content/uploads/2024/07/milanesas-pure-ig-1-819x1024.webp"
    ],
    [
      "Milanesas con papas fritas",
      "30-35min",
      "https://img.freepik.com/foto-gratis/capa-plana-pescado-papas-fritas-tabla-cortar_23-2148776041.jpg?semt=ais_hybrid&w=740&q=80",
    ],
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          'Recetas',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: true,
        toolbarHeight: 70.0,
        backgroundColor: Colors.green[600],
        elevation: 5.0,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      
      body: ListView.builder(
        itemCount: recetaList.length,
        itemBuilder: (context, index) {
          return RecetaPrewiew(
            Titulo: recetaList[index][0], 
            Duracion: recetaList[index][1], 
            ImagenURL: recetaList[index][2],
          );
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}