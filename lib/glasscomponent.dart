import 'dart:ui';

import 'package:flutter/material.dart';

class GlassComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withOpacity(0.3),width: 1)
        ),
        margin: const EdgeInsets.all(18),
        height: MediaQuery.of(context).size.height/3.5,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left:20,
                    child:  Container(
                      height: 40,
                      width: 60,
                      child: const Image(image:NetworkImage("https://logodix.com/logo/1153467.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 75,
                    left: 20,
                    child: Text("4204   4208   0085   8008", style: TextStyle(
                        color: Colors.white.withOpacity(0.80),
                        fontSize: 22,
                        letterSpacing: 2
                    ),),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Text("AIHRAR SHAIKH",style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 32,
                    child: Text("EXPIRY 02/04",style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 14,
                    ),),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}