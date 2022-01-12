import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
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
          child: TextButton(
              child: Container(
                color: Colors.white,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.red,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.blue,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.purple,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.yellow,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.green,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                color: Colors.grey,
              ),
              onPressed: () {
                print('Pressed');
              }),
        ),
      ],
    );
  }
}
