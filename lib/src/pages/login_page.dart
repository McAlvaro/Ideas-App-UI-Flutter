import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/widgets/box_bottom_widget.dart';
import 'package:ideas_app_ui/src/widgets/box_top_widget.dart';
import 'package:ideas_app_ui/src/widgets/formulario_widget.dart';
import 'package:ideas_app_ui/src/widgets/logo_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _fondoApp(),
          Column(
            children: <Widget>[
              logo(),
              FormularioLogin()
            ],
          )
        ],
      )
    );
  }

  Widget _fondoApp(){
    final fondo = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        boxTop(),
        Expanded(child: Container()),
        boxBottom()
      ],
    );

    return fondo;
  }
}