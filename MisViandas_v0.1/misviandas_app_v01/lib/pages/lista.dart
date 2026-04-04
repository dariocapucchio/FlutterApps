import 'package:flutter/material.dart';
import 'package:misviandas_app_v01/util/item.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  List items = [
    ["Arroz", false],
    ["Pechugas de pollo", false],
    ["Pan rallado", false],
    ["Papas", false],
  ];

  void checkBoxChange(bool? value, int index) {
    setState(() {
      items[index][1] = !items[index][1];
    });
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
          'Lista de compras',
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
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemLista(
            item: items[index][0],
            estado: items[index][1], 
            onChanged: (value) => checkBoxChange(value, index),
            Borrar: () {
              setState(() {
                items.remove(items[index]);
              });
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
    );
  }
}