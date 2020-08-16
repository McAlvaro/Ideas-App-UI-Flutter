import 'package:flutter/material.dart';

class ClipperTop extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    var firstControlPoint = Offset(size.width / 1.4, size.height);
    var firstEndPoint = Offset(size.width, size.height - 120);

    path.lineTo(0, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}