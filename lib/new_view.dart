import 'package:flutter/material.dart';
import 'Widgets/create_button.dart';
import 'home_page.dart';
import 'image_test.dart';

class NewView extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 140),
                    Row(children: <Widget>[
                      Text('INICIA SESION  ',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ]),
                    SizedBox(height: 12),
                    Row(children: <Widget>[
                      Text('Número de teléfono ',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 360,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ej. 584141879142',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    CreateButton(
                      buttonText: 'Iniciar Sesión',
                      maxWidth: 360,
                      actionToDo: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                    SizedBox(height: 100),
                    Row(children: <Widget>[
                      Text('SUSCRIBETE  ',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ]),
                    SizedBox(height: 12),
                    Row(children: <Widget>[
                      Text('Si no tienes cuenta suscribete con tu',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ]),
                    Row(children: <Widget>[
                      Text('numero telefónico',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 360,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ej. 584141879142',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(0.7)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    )
                  ],
                ),
              ])),
    );
  }
}
