import 'package:flutter/material.dart';

class ClipperBottom extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
    var path = Path();

    var firstControlPoint = Offset(size.height / 1.4, 0.0);
    var firstEndPoint = Offset((size.height / 4) - 35 , size.height);

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}