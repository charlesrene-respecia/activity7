import 'package:flutter/services.dart';

import 'main.dart';
import 'function.dart';

import 'mainContainer.dart';
import 'package:flutter/material.dart';
import 'start.dart';

class GameOver extends StatefulWidget {
  @override
  _GameOver createState() => _GameOver();
}

class _GameOver extends State<GameOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(bottom: 5, top: 20, left: 10),
                      child: Text(
                        'GAME OVER!',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5, left: 10),
                      child: Text(
                        'Your score is : ' + score.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextButton(
                        child: Text(
                          'Start again!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 8, 88, 32),
                            minimumSize: Size(180, 50)),
                        onPressed: () {
                          setState(() {
                            callComponents();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainContainer()));
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      margin: const EdgeInsets.only(
                          left: 30, right: 20, top: 20, bottom: 5),
                      child: Text(
                        'LAST 5 CARD GUESSED',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 80,
                          width: 55,
                          child: Image.asset('lib/images/' +
                              (geussCardsLists.length > 0
                                  ? geussCardsLists[geussCardsLists.length - 1]
                                      .pathImg
                                  : 'blank.png')),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 80,
                          width: 55,
                          child: Image.asset('lib/images/' +
                              (geussCardsLists.length > 1
                                  ? geussCardsLists[geussCardsLists.length - 2]
                                      .pathImg
                                  : 'blank.png')),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 80,
                          width: 55,
                          child: Image.asset('lib/images/' +
                              (geussCardsLists.length > 2
                                  ? geussCardsLists[geussCardsLists.length - 3]
                                      .pathImg
                                  : 'blank.png')),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 80,
                          width: 55,
                          child: Image.asset('lib/images/' +
                              (geussCardsLists.length > 3
                                  ? geussCardsLists[geussCardsLists.length - 4]
                                      .pathImg
                                  : 'blank.png')),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          height: 80,
                          width: 55,
                          child: Image.asset('lib/images/' +
                              (geussCardsLists.length > 4
                                  ? geussCardsLists[geussCardsLists.length - 5]
                                      .pathImg
                                  : 'blank.png')),
                        ),
                      ),
                    )
                  ],
                ),
              ])),
        ));
  }
}
