import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    print('Comenzo el request');

    // simulo datos que llegan de un servidor (delay)
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Mostro';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Frank';
    });

    print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}