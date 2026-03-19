// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(Icons.home),
        toolbarHeight: 70.0,
        title: const Text(
          'MisViandas',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey[250],
        elevation: 5.0,
        shadowColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Organizá tus viandas de toda las semana en segundos!',
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 20.0),
              
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Generar plan de viandas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[400]),
                ),
              ),
              //SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Text('Ver recetas'),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Text('Mi plan semanal'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/usuario');
                },
                icon: Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.red,
                ),
              ),
              Text('USUARIO'),
            ],
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/plan');
                },
                icon: Icon(
                  Icons.border_color,
                  size: 50.0,
                  color: Colors.green,
                ),
              ),
              Text('PLAN SEMANAL'),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/lista');
                },
                icon: Icon(
                  Icons.add_shopping_cart,
                  size: 50.0,
                  color: Colors.blue,
                ),
              ),
              Text('LISTA'),
            ],
          ),          
        ],
        backgroundColor: Colors.grey[250],
        elevation: 10.0,
        shadowColor: Colors.black,
        height: 100.0,
      ),
    );
  }
}