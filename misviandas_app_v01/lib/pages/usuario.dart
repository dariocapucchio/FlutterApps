// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {


  List perfiles = ["yo", "vos"];

  TextEditingController myController = TextEditingController();


  void editarUsuario(int index) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey[300],
          content: Container(
            child: Column(
              children: [
                //Text("Nombre:"),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Nombre",
                    labelText: "Nuevo nombre",
                  ),
                  
                ),
                Divider(),
                Text("Marque las comidas que le gustan:"),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          perfiles[index] = myController.text;
                        });
                        Navigator.of(context).pop();
                      },
                      color: Colors.green,
                      child: Text("Guardar"),
                    ),
                    SizedBox(width: 4),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.red,
                      child: Text("Cancelar"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }


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
          'Perfiles',
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
        itemCount: perfiles.length,
        itemBuilder: (context, index) => ListTile(
          title: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 35.0,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        perfiles[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text('EDITAR'),
                        onPressed: () {
                          /* ... */
                          editarUsuario(index);
                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text(
                          'BORRAR',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          setState(() {
                            perfiles.remove(perfiles[index]);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            perfiles.add("uno mas");
          });
          
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
     /* 
      ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          

          
        ],
      ),
*/


/*
      Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                'Crear perfil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              icon: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
*/
  
    );
  }
}