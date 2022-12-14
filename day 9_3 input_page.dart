import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMIlll CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff1D1E33),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: Color(0xff1D1E33),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: Color(0xff1D1E33),
                ),
              ),
            ],
          )),
        ]));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
