import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({Key? key, this.height, this.width, this.child}) : super(key: key);
final height;
final width;
final child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,

        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
                filter:ImageFilter.blur(
                  sigmaY: 20.0,
                  sigmaX: 20.0,
                ),
              child: Container(),
            ),
            //gradient effect
            Container(
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.2),
                  ]
                ),

              ),
              child: child,
            ),
          ],
        ),

      ),
    );
  }
}
