import 'package:flutter/material.dart';
import 'package:mapapp/custom_markers/custom_markers.dart';

class TestMarkerPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350, height:150, color: Colors.red,
          child: CustomPaint(
            //painter: MarkerInicioPainter(16),
            painter: MarkerDetinoPainter('Quicentro Norte',1600),
          ), 
        ),
      ),
     
    );
  }
}