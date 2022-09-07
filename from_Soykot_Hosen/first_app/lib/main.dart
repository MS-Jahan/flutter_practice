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
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "3",
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
                alignment: Alignment.center,
              ),
            ),

            //   child: Text(
            //     "Container 3",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       color: Colors.blue,
            //       fontStyle: FontStyle.italic,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.pink,
            //     shape: BoxShape.rectangle,
            //   ),
            //   //margin: EdgeInsets.all(50.0),
            //   // padding: EdgeInsets.all(80.0),
            //   alignment: Alignment.center,
            //   height: 180.0,
            //   width: 180.0,
            // ),
          ],
        ),
      ),
    );
  }
}
