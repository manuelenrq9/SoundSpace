import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayAudio extends StatefulWidget{
  const PlayAudio ({Key? key}): super(key:key);
  @override
  State<PlayAudio> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<PlayAudio>{
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AudioPlayer example'),
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            playSound();
          },
          child: Text("Play Sound"),
        ), 
      ),
     ),
   );
  }
  
  AudioPlayer player = AudioPlayer();
  
  Future<void> playSound() async {
    String soundPath = "audio/ManInTheBox,mp3";
    await player.play(AssetSource(soundPath));
  }
}

