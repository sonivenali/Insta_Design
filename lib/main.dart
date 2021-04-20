import 'package:design_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DesignApp());
}

class DesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
