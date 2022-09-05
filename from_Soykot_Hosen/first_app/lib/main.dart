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
        body: Row(
          children: <Widget>[
            Container(
              child: Text(
                "Container 1",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.rectangle,
              ),
              //margin: EdgeInsets.all(50.0),
              // padding: EdgeInsets.all(80.0),
              alignment: Alignment.center,
              height: 180.0,
              width: 180.0,
            ),
            SizedBox(width: 10.0),
            Container(
              child: Text(
                "Container 2",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.rectangle,
              ),
              //margin: EdgeInsets.all(50.0),
              // padding: EdgeInsets.all(80.0),
              alignment: Alignment.center,
              height: 180.0,
              width: 180.0,
            ),
            SizedBox(height: 10.0),
            // Container(
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
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
