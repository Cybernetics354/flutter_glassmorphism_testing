import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  GlassContainer({
    @required this.width,
    @required this.height,
    @required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            blurRadius: 25.0,
            spreadRadius: 10.0,
            color: Colors.black.withOpacity(0.5)
          )
        ]
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0
        ),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.4),
              width: 1.0
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white.withOpacity(0.3),
          ),
          child: child,
        ),
      ),
    );
  }
}