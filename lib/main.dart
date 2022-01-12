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
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note1.wav');
                player.play();
                print('Do');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note2.wav');
                player.play();
                print('Ré');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note3.wav');
                player.play();
                print('Mi');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note4.wav');
                player.play();
                print('Fa');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note5.wav');
                player.play();
                print('Sol');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () async {
                await player.setAsset('wavs/note6.wav');
                player.play();
                print('La');
              }),
        ),
        Expanded(
          child: TextButton(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                decoration: new BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onPressed: () {
                player.setAsset('wavs/note7.wav');
                player.play();
                print('Si');
              }),
        ),
      ],
    );
  }
}
