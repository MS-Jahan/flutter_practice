import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

int clickNumber = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    clickNumber += 1;
                    print("Press Container");
                    print("Click number is = + $clickNumber");
                  });
                },
                child: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    clickNumber.toString(),
                    style: const TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
