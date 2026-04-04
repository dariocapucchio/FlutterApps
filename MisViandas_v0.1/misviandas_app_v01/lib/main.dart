import 'package:flutter/material.dart';
import 'package:misviandas_app_v01/pages/loading.dart';
import 'package:misviandas_app_v01/pages/home.dart';
import 'package:misviandas_app_v01/pages/plan.dart';
import 'package:misviandas_app_v01/pages/recetas.dart';
import 'package:misviandas_app_v01/pages/usuario.dart';
import 'package:misviandas_app_v01/pages/lista.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {
    '/': (contex) => Loading(),
    '/home': (contex) => Home(),
    '/plan': (contex) => Plan(),
    '/usuario': (context) => Usuario(),
    '/recetas': (context) => Recetas(),
    '/lista': (context) => Lista(),
  },
));