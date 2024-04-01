import 'package:flutter/material.dart';
import 'login_page.dart';
import 'Widgets/create_button.dart';

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
                    CreateButton(
                      buttonText: 'REGISTRATE AQUI',
                      maxWidth: 250,
                      actionToDo: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    ),
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
}
