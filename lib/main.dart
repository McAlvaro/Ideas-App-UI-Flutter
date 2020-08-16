import 'package:flutter/material.dart';
import 'package:ideas_app_ui/src/pages/home_page.dart';
import 'package:ideas_app_ui/src/pages/login_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ideas App',
      initialRoute: 'login',
      routes: {
        'login'   : (BuildContext context) => LoginPage(),
        'home'    : (BuildContext context) => HomePage()
      },
    );
  }
}