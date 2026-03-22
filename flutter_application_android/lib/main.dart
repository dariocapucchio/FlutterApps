import 'package:flutter/material.dart';
import 'package:flutter_application_android/pages/loading.dart';
import 'package:flutter_application_android/pages/home.dart';
import 'package:flutter_application_android/pages/plan.dart';
import 'package:flutter_application_android/pages/usuario.dart';
import 'package:flutter_application_android/pages/lista.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (contex) => Loading(),
    '/home': (contex) => Home(),
    '/plan': (contex) => Plan(),
    '/usuario': (context) => Usuario(),
    '/lista': (context) => Lista(),
  },
));