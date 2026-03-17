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
        title: const Text(
          'MisViandas',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[250],
        elevation: 10.0,
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
                child: Text('Generar plan de viandas'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
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
              Text(
                'gato',
                style: TextStyle(
                  fontSize: 66.0,
                  color: Colors.white,
                ),
              ),
              
              SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.blue[300],
                    child: TextButton.icon(
                      onPressed: () {}, 
                      label: Text('data'),
                      icon: Icon(
                        Icons.home,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.green,
                    child: TextButton.icon(
                      onPressed: () {}, 
                      label: Text('data'),
                      icon: Icon(
                        Icons.add,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                color: Colors.white,
                
                child: OverflowBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: () {},
                      label: Text('INICIO'),
                      icon: Icon(
                        Icons.home,
                        size: 50.0,
                        color: Colors.red,
                      ),
                    ),
                    
                    TextButton.icon(
                      onPressed: () {},
                      label: Text('PLAN SEMANAL'),
                      icon: Icon(
                        Icons.border_color,
                        size: 50.0,
                        color: Colors.green,
                        
                      ),
                    ),
                    
                    TextButton.icon(
                      onPressed: () {},
                      label: Text('LISTA'),
                      icon: Icon(
                        Icons.add_shopping_cart,
                        size: 50.0,
                        color: Colors.blue,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}