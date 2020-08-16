import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';

final estiloBoton = TextStyle( color: colorTexto, fontSize: 16.0, fontWeight: FontWeight.w600 );

Widget categorias( BuildContext context ){

  final categorias = Container(
    padding: EdgeInsets.only( left: 20.0, top: 1.0, bottom: 1.0 ),
    width: double.infinity,
    height: 30.0,
    child: ListView(
      padding: EdgeInsets.symmetric( vertical: 2.0 ),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _crearBoton('All'),
        SizedBox( width: 30.0),
        _crearBoton('Food'),
        SizedBox( width: 30.0),
        _crearBoton('Home'),
        SizedBox( width: 30.0),
        _crearBoton('Parties'),
        SizedBox( width: 30.0),
        _crearBoton('Decoration'),
        SizedBox( width: 30.0),
        _crearBoton('Design'),
        SizedBox( width: 30.0)
      ],
    ),
  );

  final search = Container(
    padding: EdgeInsets.symmetric( horizontal: 20.0 ),
    child: Theme(
      data: Theme.of(context).copyWith( primaryColor: Colors.white ),
      child: TextField(
        cursorColor: colorPrimario,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search',
          isDense: true,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
      )
    ),
  );

  return Column(
    children: <Widget>[
      categorias,
      search
    ],
  );

}

Widget _crearBoton( String texto ){

  return GestureDetector(
    child: Text(texto, style: estiloBoton),
    onTap: (){},
  );

}