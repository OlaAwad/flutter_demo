import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  // String imgLink;
  String text;
  MyCard({this.text});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(
            children: [
              Text(
                widget.text,
                style: TextStyle(color: Colors.lightBlue, fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
