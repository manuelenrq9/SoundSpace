import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final String buttonText;
  final Function? actionToDo;
  final double? maxWidth;

  const CreateButton({
    required this.buttonText,
    this.actionToDo,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth ?? double.infinity),
      child: ElevatedButton(
        onPressed: () {
          if (actionToDo != null) {
            actionToDo!();
          }
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.lightBlueAccent),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
