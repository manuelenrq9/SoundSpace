import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AudioPlayer example'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        playSound();
                      },
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (null),
                      icon: Icon(
                        Icons.pause,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (null),
                      icon: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (null),
                      icon: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  AudioPlayer player = AudioPlayer();

  Future<void> playSound() async {
    String soundPath = "audio/ManInTheBox.mp3";
    await player.play(AssetSource(soundPath));
  }
}
