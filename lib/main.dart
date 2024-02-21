import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.cyan, Colors.green],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Practica de Flutter'),
          centerTitle: true,
          backgroundColor: Colors.orange[300],
        ),
        //body:

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange[300],
          child: Text('Click!'),
          onPressed: null,
        ),
      ),
    );
  }
}
