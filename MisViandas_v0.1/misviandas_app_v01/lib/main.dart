import 'package:flutter/material.dart';
import 'package:misviandas_app_v01/pages/loading.dart';
import 'package:misviandas_app_v01/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (contex) => Loading(),
    '/home': (contex) => Home(),
  },
));