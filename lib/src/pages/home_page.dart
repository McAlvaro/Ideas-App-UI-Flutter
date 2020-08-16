import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/widgets/appbar_widget.dart';
import 'package:ideas_app_ui/src/widgets/box_top_widget.dart';
import 'package:ideas_app_ui/src/widgets/cards_view_widget.dart';
import 'package:ideas_app_ui/src/widgets/categorias_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          boxTop(),
          Column(
            children: <Widget>[
              appBar(),
              categorias(context),
              SizedBox( height: 15.0 ),
              Expanded(child: CardsView())
            ],
          )
        ],
      ),
    );
  }
}