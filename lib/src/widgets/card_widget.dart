import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';

Widget card( String titulo, String imagen, String detalle ){

  final card = Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    clipBehavior: Clip.antiAlias,
    child: Container(
      height: 216.0,
      width: 320.0,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 260.0,
                padding: EdgeInsets.symmetric( horizontal: 10.0, vertical: 10.0 ),
                child: Text(titulo.toUpperCase(), style: TextStyle( color: colorTituloSecundario, fontWeight: FontWeight.w800 ), overflow: TextOverflow.ellipsis
                ),
              ),
              Image.asset(imagen, width: 260.0),
              Container(
                padding: EdgeInsets.symmetric( horizontal: 10.0, vertical: 5.0 ),
                width: 260,
                height: 65.0,
                child: Text(detalle, 
                  maxLines: 3, 
                  overflow: TextOverflow.ellipsis, style: TextStyle(
                  color: colorTextoSecundario
                ),
                textAlign: TextAlign.justify,),
              )
            ],
          ),

          Container(
            width: 50.0,
            height: 230.0,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.star_border, color: colorTituloSecundario),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.share, color: colorTituloSecundario),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.add, color: colorTituloSecundario),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.check, color: colorTituloSecundario),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: FlatButton(
                    onPressed: (){}, 
                    child: Icon(Icons.more_horiz, color: colorTituloSecundario),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );

  return card;

}