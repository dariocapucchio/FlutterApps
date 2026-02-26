import 'package:flutter/material.dart';
import 'package:flutter_app_04_multipage/pages/choose_location.dart';
import 'package:flutter_app_04_multipage/pages/loading.dart';
import 'package:flutter_app_04_multipage/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (contex) => Loading(),
    '/home': (contex) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
