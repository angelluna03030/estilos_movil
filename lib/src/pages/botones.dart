import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotnoesPages extends StatelessWidget {
  const BotnoesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_titulos(), _bottonesRedondeados()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottonnavegacios(context));
  }

  Widget _fondoApp() {
    final grasinete = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(00, 0.6),
              end: FractionalOffset(00, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );
    final cajaRosa = Transform.rotate(
        angle: -pi / 3.0,
        child: Container(
            width: 360.0,
            height: 360.0,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(243, 104, 114, 1)
                ]),
                borderRadius: BorderRadius.circular(80))));

    return Stack(
      children: <Widget>[
        grasinete,
        Positioned(bottom: -200, child: cajaRosa),
        Positioned(top: -160, child: cajaRosa)
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(15),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              "hola mundo jajajaj",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
                "hola mundo, con partidula incluidas para meojra el diñeso de la app",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ))
          ],
        ),
      ),
    );
  }

  Widget _bottonnavegacios(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 37, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))),
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            label: '', // Etiqueta agregada aquí
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            label: '', // Y aquí
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            label: '', // Y aquí
          ),
        ],
      ),
    );
  }

  Widget _bottonesRedondeados() {
    return Table(
      children: <TableRow>[
        TableRow(children: <Widget>[
          _crearWidget("Widdos", Icons.border_all , Colors.blue ),
             _crearWidget("bicicleta", Icons.directions_bike , Colors.purpleAccent ),
        ]),
             TableRow(children: <Widget>[
          _crearWidget("Tineda de youtube", Icons.shop , const Color.fromARGB(255, 243, 33, 33)),
             _crearWidget("file", Icons.insert_drive_file , Colors.blue),
        ]),
              
              TableRow(children: <Widget>[
          _crearWidget("shopify", Icons.shopify_sharp , Colors.green),
             _crearWidget("entretenimineto", Icons.movie_filter , Colors.orange),
        ]),TableRow(children: <Widget>[
          _crearWidget("shopify", Icons.shopify_sharp , Colors.green),
             _crearWidget("entretenimineto", Icons.movie_filter , Colors.orange),
        ]),
      ],
    );
  }

Widget _crearWidget(String texto, IconData icono, Color color) {
  return Container(
    height: 180.0,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.6), // Color con opacidad
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0), // Importante para recortar el desenfoque
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icono, color: Colors.white, size: 30.0),
            ),
            Text(texto, style: TextStyle(color: color)),
            SizedBox(height: 5.0)
          ],
        ),
      ),
    ),
  );
}


}
