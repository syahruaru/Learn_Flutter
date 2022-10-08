import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('I Am Poor')),
        backgroundColor: Colors.cyan[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/stones.png'),
        ),
      ),
      backgroundColor: Colors.amberAccent[100],
    ),
  ));
}
