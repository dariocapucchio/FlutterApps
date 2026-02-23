import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
      title: Text(
        'SUPER APP',
        style: TextStyle(color: Colors.white),
        ),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
      elevation: 0.0,
    ),
    body: Column(
      children: [
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/Capu.jpg'),
              
            ),
          ],
        ),
        Divider(
          height: 30.0,
          color: Colors.white70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {print('Te logeaste gato');},
              child: Text('Log In')
              ),
            Text('dato'),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('Fila 1'),
            ),
          ],
        ),
        Divider(
          height: 30.0,
          color: Colors.white70,
        ),
        Row(
          children: <Widget>[
            Expanded(child: Image.asset('assets/messi.jpg')),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Center(child: Text('Col. 1')),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Center(child: Text('Col. 2')),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amber,
                child: Center(child: Text('Col. 3')),
              ),
            )
          ],
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('boton apretado');
      },
      shape: CircleBorder(),
      backgroundColor: Colors.red[600],
      child: Text('click'),
    ),
  );
  }
}