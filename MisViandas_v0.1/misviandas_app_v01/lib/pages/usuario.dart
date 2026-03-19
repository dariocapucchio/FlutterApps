import 'package:flutter/material.dart';

class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: Text('Usuario'),
        centerTitle: true,

      ),
      body: Center(
        child: 
        Text('usuario'),
      ),
    );
  }
}