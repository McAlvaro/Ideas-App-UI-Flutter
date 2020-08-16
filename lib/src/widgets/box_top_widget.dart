import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';
import 'package:ideas_app_ui/src/widgets/clipper_top_widget.dart';

Widget boxTop(){

  final boxTop = ClipPath(
    clipper: ClipperTop(),
    child: Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(-0.2, 0.9),
          colors: [
            colorPrimario,
            colorSecundario
          ]
        )
      ),
    ),
  );

  return boxTop;

}