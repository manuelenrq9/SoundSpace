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
