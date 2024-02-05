
import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2()],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imgenFondo(), _text()],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[_colorfondo2(), _botton()],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imgenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/imagen.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _text() {
    return const SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            "11°",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 50.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "MIercoles",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 50.0),
          ),
          Expanded(child: Row()),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 70.0,
            color: Color.fromARGB(255, 255, 255, 255),
          )
        ],
      ),
    );
  }

  _colorfondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromARGB(255, 0, 153, 255),
    );
  }

  Widget _botton() {
    return Container(
      child: Center(
        child: ElevatedButton(
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text("Bienvenidos" ,style: TextStyle( color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
          ),
          onPressed: () => { 
            print("hola mundo")
          },
        ),
      ),
    );
  }
}
