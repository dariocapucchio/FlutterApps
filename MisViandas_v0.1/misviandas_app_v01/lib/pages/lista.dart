import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text('Lista de compras'),
        centerTitle: true,

      ),
      body: Center(
        child: 
        Text('lista de compras'),
      ),
    );
  }
}