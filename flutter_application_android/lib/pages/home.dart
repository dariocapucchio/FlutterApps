// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        leading: Image(
          image: AssetImage('assets/logo_01_nbg.png'),
          height: 60.0,
        ),
        toolbarHeight: 70.0,
        title: const Text(
          'MisViandas',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey[250],
        elevation: 5.0,
        shadowColor: Colors.black,
      ),
      
      
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              
              SizedBox(height: 20.0),
              
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
              
              SizedBox(height: 20.0),
              
              Card(
                elevation: 10.0,
                color: Colors.white,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/usuario');
                  },
                  label: Text(
                    'Perfiles',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  icon: Image(
                    image: AssetImage('assets/icono_recetas_00.png'),
                    height: 100.0,
                  ),
                ),
              ),
              
              SizedBox(height: 20.0),

              Card(
                elevation: 10.0,
                color: Colors.white,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/plan');
                  },
                  label: Text(
                    'Plan semanal',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  icon: Image(
                    image: AssetImage('assets/icono_plan.png'),
                    height: 100.0,
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              Card(
                elevation: 10.0,
                color: Colors.white,
                child: TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Ver recetas',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  icon: Image(
                    image: AssetImage('assets/icono_recetas_01.png'),
                    height: 100.0,
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              Card(
                elevation: 10.0,
                color: Colors.white,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lista');
                  },
                  label: Text(
                    'Lista de compras',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  icon: Image(
                    image: AssetImage('assets/icono_changuito.png'),
                    height: 100.0,
                  ),
                ),
              ),

              /*  // Grilla de botones primera opcion
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/icono_recetas_00.png'),
                          height: 150.0,
                        ),
                        Text('Ver recetas'),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/icono_plan.png'),
                          height: 150.0,
                        ),
                        Text('Mi plan semanal'),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/icono_recetas_01.png'),
                          height: 150.0,
                        ),
                        Text('Mis recetas'),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/lista'); 
                          },
                          icon: Image(
                            image: AssetImage('assets/icono_changuito.png'),
                            height: 150,
                          ),
                        ),
                        
                        Text('Lista de compras'),
                      ],
                    ),
                  ),
                ],
              ),
              */

            ],
          ),
        ),
      ),


/*    //  Barra de navegacion (no me gusto)
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
              Text('PERFILES'),
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
    */
    );
  }
}