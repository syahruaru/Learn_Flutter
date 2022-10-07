import 'package:flutter/material.dart';

// The main function is the starting point for all our flutter apps.
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: Center(child: Text('I Am Rich')),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
          child: Image(
        image: AssetImage('images/diamond.png'),
      )),
    ),
  ));
}
