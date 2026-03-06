import 'package:flutter/material.dart';
import 'package:flutter_app_04_multipage/services/worl_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';
  Object? datos = {};

  void setUpWorldTime() async {
    WorlTime instance = WorlTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    datos = {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    };
    Navigator.pushReplacementNamed(context, '/home', arguments: datos);
    /*
    // Codigo para probar que funciona
    print(instance.time);
    setState(() {
      time = instance.time;
    });*/
  }  

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}