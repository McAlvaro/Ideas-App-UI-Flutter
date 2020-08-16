
import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/constants/constants.dart';

class FormularioLogin extends StatelessWidget {
  const FormularioLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _formulario( context ),
        SizedBox( height: 10 ),
        buttonSignUp()
      ],
    );
  }

  Widget _formulario( BuildContext context ){
    final formulario = Container(
      padding: EdgeInsets.symmetric( horizontal: 50, vertical: 40 ),
      child: Column(
        children: <Widget>[
          _inputEmail(context),
          SizedBox( height: 10.0 ),
          _inputPassword( context ),
          SizedBox( height: 40.0 ),
          _button( context ),
          SizedBox( height: 15.0 ),
          Text('Forgot your Password?')
        ],
      ),
    );

    return formulario;
  }

  Widget _inputEmail( BuildContext context ){
    final email = Theme(
      data: Theme.of(context).copyWith( primaryColor: colorPrimario ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: colorPrimario,
        decoration: InputDecoration(
          hintText: 'Email',
          suffixIcon: Icon(Icons.mail_outline)
        ),
      )
    );

    return email;
  }

  Widget _inputPassword( BuildContext context ){
    final password = Theme(
      data: Theme.of(context).copyWith( primaryColor: colorPrimario ),
      child: TextField(
        obscureText: true,
        cursorColor: colorPrimario,
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: Icon(Icons.vpn_key, size: 20)
        ),
      )
    );

    return password;
  }

  Widget _button( BuildContext context ){
    final button = RaisedButton(
      padding: EdgeInsets.symmetric( horizontal: 90.0, vertical: 12.0 ),
      shape: StadiumBorder(),
      color: colorPrimario,
      child: Text('Sign in', style: TextStyle( color: Colors.white, fontSize: 16.0 ) ),
      onPressed: (){
        Navigator.pushNamed(context, 'home');
      }
    );

    return button;
  }

  Widget buttonSignUp(){

    final buttonSignUp = Align(
      alignment: Alignment.centerRight,

      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 42.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only( topLeft: Radius.circular(25.0), bottomLeft: Radius.circular(25.0) ),
          color: Colors.white
        ),

        child: RaisedButton(
          elevation: 0.0,
          hoverElevation: 0.0,
          highlightElevation: 0.0,
          focusElevation: 0.0,
          padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 12.0 ),
          shape: StadiumBorder(),
          color: Colors.white,
          child: Text('Sign Up', style: TextStyle( fontSize: 16.0 )),
          onPressed: (){}
        ),
      ),
    );

    return buttonSignUp;
  }

}