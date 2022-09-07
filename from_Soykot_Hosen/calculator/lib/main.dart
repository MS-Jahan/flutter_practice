import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  return runApp(Calculator());
}

String input = '', result = '', temp = '';
num res = 0.0;
double res1 = 0.0;
List<String> operator_list = ["+", "-", "✕", "÷"];

String string_serializer(String input) {
  input = input
      .replaceAll("++", "+")
      .replaceAll("--", "-")
      .replaceAll("✕✕", "✕")
      .replaceAll("÷÷", "÷");

  if (input.length >= 2) {
    // if (input.substring(input.length - 1) ==
    //     input.substring(input.length - 2)) {
    //   input = input.substring(0, input.length - 1);
    // }

    print(operator_list.contains(input.substring(input.length - 1)));
    print(operator_list
        .contains(input.substring(input.length - 2, input.length - 1)));
    print(input.substring(input.length - 1));
    print(input.substring(input.length - 2, input.length - 1));

    if (operator_list.contains(input.substring(input.length - 1)) &&
        operator_list
            .contains(input.substring(input.length - 2, input.length - 1))) {
      input = input.substring(0, input.length - 1);
    }
    print("in func Input = $input");
  }

  return input;
}

void press_btn(String btn_text) {
  print("Pressed $btn_text");
  print("Input = $input");
  if (btn_text == "C") {
    input = "";
    result = "";
  } else if (btn_text == "=") {
    while (true) {
      if (operator_list.contains(input.substring(input.length - 1))) {
        input = input.substring(0, input.length - 1);
      } else {
        break;
      }
    }

    res = input.replaceAll("✕", "*").replaceAll("÷", "/").interpret();
    if (res.isInfinite) {
      result = "= Infinity";
    } else if (res.isNaN) {
      result = "= Syntax Error";
    }
    // print("${res.toInt()}, ${res.toDouble()}, ${res.toInt() - res.toDouble()}");
    else if (res.toInt() - res.toDouble() == 0.0) {
      res = res.toInt();
      result = " = $res";
    } else {
      res1 = res.toDouble();
      temp = res1.toStringAsFixed(5);
      res = num.parse(temp);
      result = " = $res";
    }
  } else {
    input += btn_text;
    input = string_serializer(input);
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        input,
                        style: TextStyle(fontSize: 38.0),
                      ),
                      Text(
                        result,
                        style: TextStyle(fontSize: 38.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('1');
                        });
                      },
                      child: Container(
                        color: Color(0xFFAD1457),
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('2');
                        });
                      },
                      child: Container(
                        color: Color(0xFFC2185B),
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('3');
                        });
                      },
                      child: Container(
                        color: Color(0xFFD81860),
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('+');
                        });
                      },
                      child: Container(
                        color: Color(0xFFE91E63),
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('4');
                        });
                      },
                      child: Container(
                        color: Color(0xFFE91E63),
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('5');
                        });
                      },
                      child: Container(
                        color: Color(0xFFD81860),
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('6');
                        });
                      },
                      child: Container(
                        color: Color(0xFFC2185B),
                        child: Text(
                          '6',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('-');
                        });
                      },
                      child: Container(
                        color: Color(0xFFAD1457),
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('7');
                        });
                      },
                      child: Container(
                        color: Color(0xFFAD1457),
                        child: Text(
                          '7',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('8');
                        });
                      },
                      child: Container(
                        color: Color(0xFFC2185B),
                        child: Text(
                          '8',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('9');
                        });
                      },
                      child: Container(
                        color: Color(0xFFD81860),
                        child: Text(
                          '9',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('✕');
                        });
                      },
                      child: Container(
                        color: Color(0xFFE91E63),
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('0');
                        });
                      },
                      child: Container(
                        color: Color(0xFFE91E63),
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('C');
                        });
                      },
                      child: Container(
                        color: Color(0xFFD81860),
                        child: Text(
                          'C',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('=');
                        });
                      },
                      child: Container(
                        color: Color(0xFFC2185B),
                        child: Text(
                          '=',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          press_btn('÷');
                        });
                      },
                      child: Container(
                        color: Color(0xFFAD1457),
                        child: Text(
                          '÷',
                          style: TextStyle(fontSize: 36.0, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
