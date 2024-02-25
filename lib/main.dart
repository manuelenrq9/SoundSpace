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
        colors: [
          Color.fromARGB(255, 36, 10, 129),
          Color.fromARGB(255, 133, 28, 151)
        ],
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton(buttonText: 'REGISTRATE AQUI', maxWidth: 250),
                    SizedBox(height: 20),
                    Row(children: <Widget>[
                      Text('¿Tienes una cuenta?  ',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text(
                        'Inicia Sesión',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 75, 197, 235)),
                      )
                    ]),
                    SizedBox(height: 13),
                    Row(children: <Widget>[
                      Text('O ingresa como ',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text(
                        'Invitado',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 75, 197, 235)),
                      )
                    ]),
                  ],
                ),
              ])),
    );
  }

  Widget createButton({
    required String buttonText,
    Function? actionToDo,
    double? maxWidth, // Parámetro opcional para la longitud máxima
  }) {
    // Usar un ConstrainedBox para definir el ancho máximo
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth ?? double.infinity),
      child: ElevatedButton(
        onPressed: () {
          if (actionToDo != null) {
            actionToDo();
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
