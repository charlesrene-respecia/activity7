import 'package:flutter/material.dart';
import 'start.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start(),
    );
  }
}

class cardDeck {
  String pathImg = "";
  int cardId = 0;
  int equavalent = 0;
}
