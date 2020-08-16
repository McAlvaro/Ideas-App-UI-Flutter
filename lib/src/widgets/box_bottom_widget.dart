import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';
import 'package:ideas_app_ui/src/widgets/clipper_bottom_widget.dart';

Widget boxBottom(){
  final boxBottom = ClipPath(
    clipper: ClipperBottom(),
    child: Container(
      width: double.infinity,
      height: 120.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(

          colors: [
            colorPrimario,
            colorSecundario
          ]
        )
      ),
    ),
  );

  return boxBottom;
}