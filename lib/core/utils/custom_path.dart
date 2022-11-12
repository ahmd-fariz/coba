import 'package:flutter/material.dart';


class CustumPathTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height - 100, size.width / 2, size.height);
    // path.lineTo(size.width, 0);
    path.addOval(
        Rect.fromCenter(center: Offset(300, 0), width: 180, height: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustumPathBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height - 100, size.width / 2, size.height);
    // path.lineTo(size.width, 0);
    path.addOval(
        Rect.fromCenter(center: Offset(0, 170), width: 200, height: 200));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}