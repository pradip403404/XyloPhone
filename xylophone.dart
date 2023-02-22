import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloPhoneApp());
}

class XyloPhoneApp extends StatefulWidget {
  const XyloPhoneApp({Key? key}) : super(key: key);

  @override
  State<XyloPhoneApp> createState() => _XyloPhoneAppState();
}

class _XyloPhoneAppState extends State<XyloPhoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("XyloPhone App"),
        ),
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('music/note3.mp3'));
                  },
                  child: Text("click me"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('music/airtel.mp3'));
                  },
                  child: Text("press me"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("music/airtel.mp3"));
                  },
                  child: Text("click now"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource("music/cheshta.mp3"));
                  },
                  child: Text("Click Me"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                  ),
                  onPressed: () async {
                    final networkPlayer = AudioPlayer();

                    await networkPlayer.setSource(UrlSource(
                        " 'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4'"));
                  },
                  child: Text("Click Url"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('music/note3.mp3'));
                  },
                  child: Text("Click me"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
