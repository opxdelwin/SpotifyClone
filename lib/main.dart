import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home.dart';
import 'package:spotify_clone/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => loadingScreen(),
      '/home': (context) => Home()
    },
  ));
}