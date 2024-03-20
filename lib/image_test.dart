import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Asset Image Example'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/facelift.jpg'),
          ),
        ),
      ),
    );
  }
}