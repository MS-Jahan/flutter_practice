import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Text(
            "Container",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          //margin: EdgeInsets.all(50.0),
          // padding: EdgeInsets.all(80.0),
          alignment: Alignment.center,
          height: 250.0,
          width: 250.0,
        ),
      ),
    );
  }
}
