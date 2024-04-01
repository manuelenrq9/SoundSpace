import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 411,
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              if (flag == false) {
                player.play(AssetSource("audio/ManInTheBox.mp3"));
              } else {
                player.play(AssetSource("audio/RustyCage.mp3"));
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              pauseSound();
            },
            icon: Icon(
              Icons.pause,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              if (flag == true) {
                flag = false;
              } else {
                flag = true;
              }
              playSound(flag);
            },
            icon: Icon(
              Icons.skip_previous,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              if (flag == true) {
                flag = false;
              } else {
                flag = true;
              }
              playSound(flag);
            },
            icon: Icon(
              Icons.skip_next,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  AudioPlayer player = AudioPlayer();
  bool flag = false;

  Future<void> playSound(bool flag) async {
    String audioPath = "";
    if (flag == false) {
      audioPath = "audio/ManInTheBox.mp3";
    } else {
      audioPath = "audio/RustyCage.mp3";
    }
    await player.play(AssetSource(audioPath));
  }

  Future<void> pauseSound() async {
    await player.pause();
  }
}
