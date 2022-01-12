import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 1');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 2');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 3');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 4');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 5');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.green,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 6');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                print('Pressed note 7');
              }),
        ),
      ],
    );
  }
}
