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
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
              IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.punch_clock,
                ),
                color: Colors.green,
              ),
              FilledButton.icon(
                onPressed: () {}, 
                label: Text(
                  'Edit Loction',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'hola',
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'gato',
                style: TextStyle(
                  fontSize: 66.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              FilledButton(
                onPressed: () {},
                child: Text('Boton 1'),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.amber,
                    child: TextButton.icon(
                      onPressed: () {}, 
                      label: Text('data'),
                      icon: Icon(
                        Icons.home,
                        size: 40.0,
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
                        Icons.access_alarm,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton( child: const Text('Button 1'), onPressed: () {}),
                  TextButton( child: const Text('Button 2'), onPressed: () {}),
                  TextButton( child: const Text('Button 3'), onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}