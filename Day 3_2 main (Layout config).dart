import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.0,
                color: Colors.amberAccent,
                child: Text('container 1'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                width: 100.0,
                color: Colors.redAccent,
                child: Text('container 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
