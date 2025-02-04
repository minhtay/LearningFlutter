import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Screen2(),
    )),
    debugShowCheckedModeBanner: false,
  ));
}

