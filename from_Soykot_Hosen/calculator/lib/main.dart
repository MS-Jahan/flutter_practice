import 'package:flutter/material.dart';

void main() {
  return runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "LibreBaskerville"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFAD1457),
          title: Text(
            "Calculator",
            style: TextStyle(
              fontSize: 36.0,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
