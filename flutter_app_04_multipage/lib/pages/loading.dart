import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    /*
    
    print('Comenzo el request');

    // simulo datos que llegan de un servidor (delay)
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Mostro';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Frank';
    });

    print('$username - $bio');

    */

    Response response = await get(Uri.https('jsonplaceholder.typicode.com','/todos/1'));
    Map data = jsonDecode(response.body);
    print(data);
  }

  void getTime() async {
    Response response = await get(Uri.https('time.now','/iana-time-zone/america-argentina-buenos-aires/'));
    //Map timeData = jsonDecode(response.toString());
    print(response.body);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}