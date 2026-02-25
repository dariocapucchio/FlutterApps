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
    //Response response = await get(Uri.https('time.now','/developer/api/timezone/America/Argentina/BuenosAires/'));
    //Map timeData = jsonDecode(response.toString());
    Response response = await get(
      Uri.parse('https://time.now/developer/api/timezone/Asia/Dubai')
    );
    Map data = jsonDecode(response.body);
    //print(data);

    // get properties from data
    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'].substring(1,3);

    print(datetime);
    //print(offset);

    // create a DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
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