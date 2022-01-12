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

  Widget XyloNote(Color? couleur,String fichier)
  {
    return Expanded(
      child: TextButton(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            decoration: new BoxDecoration(
                color: couleur,
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
          onPressed: () {
            player.setAsset(fichier);
            player.play();
          }),
    );
  }

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
        XyloNote(Colors.white,'wavs/note1.wav'),
        XyloNote(Colors.red,'wavs/note2.wav'),
        XyloNote(Colors.orange,'wavs/note3.wav'),
        XyloNote(Colors.yellow,'wavs/note4.wav'),
        XyloNote(Colors.green,'wavs/note5.wav'),
        XyloNote(Colors.blue,'wavs/note6.wav'),
        XyloNote(Colors.purple,'wavs/note7.wav'),
      ],
    );
  }
}
