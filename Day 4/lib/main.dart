import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void GetNumber() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    GetNumber();
                  },
                );
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    GetNumber();
                  },
                );
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   int leftdicenumber = 5;
//   @override
//   Widget build(BuildContext context) {
//     int leftdicenumber = 3;
//     int rightdicenumber = 4;
//
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print("Left button was pressed");
//                 //Image.asset('images/dice$leftdicenumber.png');
//               },
//               child: Image.asset('images/dice$leftdicenumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print("Right button was pressed");
//               },
//               child: Image.asset('images/dice$rightdicenumber.png'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
