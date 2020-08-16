import 'package:flutter/material.dart';

Widget logo(){

  final logo = Container(
    padding: EdgeInsets.symmetric( vertical: 30.0 ),
    height: 170,
    width: double.infinity,
    child: Image.asset('assets/logo.png'),
  );

  return SafeArea(child: logo);
}