import 'package:flutter/material.dart';
import 'package:flutter_app_04_multipage/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  //String time = 'loading';
  //Object? datos = {};
  Map data = {};

  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    data = {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    };
    Navigator.pushReplacementNamed(context, '/home', arguments: data);
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
      backgroundColor: Colors.blue[900],
      body: Center(
        child: /*SpinKitCircle(
          color: Colors.white,
          size: 80.0,
        ),*/
        Text('loading'),
      ),
    );
  }
}