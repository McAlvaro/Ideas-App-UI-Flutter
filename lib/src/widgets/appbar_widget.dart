import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';

Widget appBar(){
  final appBar = Container(
    padding: EdgeInsets.only( left: 20.0, top: 10.0 ),
    child: Row(
      children: <Widget>[
        Text('Explore Ideas', style: TextStyle( color: colorTexto, fontSize: 22.0, fontWeight: FontWeight.bold )),

        Expanded(child: Container()),

        Container(
          clipBehavior: Clip.antiAlias,
          height: 35.0,
          width: 65.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only( topLeft: Radius.circular(25.0), bottomLeft: Radius.circular(25.0) ),
            color: Colors.white
          ),
          child: RaisedButton(
            elevation: 0.0,
            hoverElevation: 0.0,
            highlightElevation: 0.0,
            focusElevation: 0.0,
            padding: EdgeInsets.symmetric( horizontal: 20.0, vertical: 2.0 ),
            shape: StadiumBorder(),
            color: Colors.white,
            child: Icon(Icons.person_outline, size: 30.0),
            onPressed: (){}
          ),
        )
      ],
    ),
  );
  return SafeArea(child: appBar);
}