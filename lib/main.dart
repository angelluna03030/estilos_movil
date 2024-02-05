import 'package:estilos/src/pages/basico.dart';
import 'package:estilos/src/pages/botones.dart';
import 'package:estilos/src/pages/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Color.fromARGB(255, 255, 255, 255)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estilos',
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => Basico(),
        'scroll': (BuildContext context) => Scroll(),
        'botones': (BuildContext context) => BotnoesPages(),
      },
    );
  }
}
