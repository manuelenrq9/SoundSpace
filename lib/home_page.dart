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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 36, 10, 129),
          Color.fromARGB(255, 133, 28, 151)
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 70,
                width: 350,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black.withOpacity(0.5)),
                  ),
                  child: Row(children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image(
                                    image: AssetImage('images/facelift.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          )
                        ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text('Soundgarden',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ]),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            Text('Rusty Cage',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16))
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 70,
                width: 350,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black.withOpacity(0.5)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Text('Alice in Chains',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ]),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text('Man in the Box',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
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
              ),
            ],
          ),
        ]),
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
