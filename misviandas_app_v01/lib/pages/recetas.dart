import 'package:flutter/material.dart';
import 'package:misviandas_app_v01/util/receta.dart';

class Recetas extends StatefulWidget {
  @override
  _RecetasState createState() => _RecetasState();
}

class _RecetasState extends State<Recetas> {

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
      body: ListView(
        children: [
          RecetaPrewiew(Titulo: "Milanesas con pure", Duracion: "40-45min", ImagenURL: "URL"),
          RecetaPrewiew(Titulo: "Milanesas con papas fritas", Duracion: "20-25min", ImagenURL: "URL2"),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}