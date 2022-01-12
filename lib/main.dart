import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Xylophone",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 50.0,
              fontFamily: 'GreatVibes',
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: XyloPhone(),
      ),
    ),
  );
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container (
              color: Colors.white,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: Container (
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
