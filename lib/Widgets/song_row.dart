import 'package:flutter/material.dart';

class SongRow extends StatelessWidget {
  final String imagePath;
  final String artistName;
  final String songTitle;

  const SongRow({
    required this.artistName,
    required this.songTitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                              image: AssetImage(imagePath),
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
                    Text(artistName,
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ]),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(songTitle,
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
    );
  }
}
