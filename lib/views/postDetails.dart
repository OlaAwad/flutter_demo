import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  String body;
  SecondPage({this.body});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextStyle style = TextStyle(fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Post Details",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Text(widget.body,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlue
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
