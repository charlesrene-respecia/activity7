import 'main.dart';
import 'package:flutter/material.dart';
import 'playAgain.dart';
import 'function.dart';

class MainContainer extends StatefulWidget {
  @override
  _MainContainer createState() => _MainContainer();
}

class _MainContainer extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 17, left: 17, bottom: 10, top: 10),
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 80, bottom: 30),
                  color: Color.fromARGB(30, 2, 251, 85),
                  child: Text(
                    'Score: ' + score.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 80, bottom: 30),
                  color: Color.fromARGB(30, 2, 251, 85),
                  child: Text(
                    'Cards: ' + cardsList.length.toString(),
                    style: TextStyle(
                        fontSize: 20,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                guestCard(),
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  top: 50, bottom: 4, left: 15, right: 15),
                              child: TextButton(
                                child: Container(
                                  width: 100,
                                  height: 80,
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: ExactAssetImage(
                                          'lib/images/higher.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (ChecktheCard('high')) {
                                      score++;
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  GameOver()));
                                    }
                                    cardCount++;
                                  });
                                },
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 15, left: 15, right: 15),
                            child: TextButton(
                              child: Container(
                                width: 100,
                                height: 80,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image:
                                        ExactAssetImage('lib/images/lower.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (ChecktheCard('low')) {
                                    score++;
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => GameOver()));
                                  }
                                  cardCount++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ])),
                CardNotGuess()
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class guestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 0, top: 50),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/' + img),
        ),
      ),
    );
  }
}

class CardNotGuess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 0, top: 50),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          height: 130,
          width: 90,
          child: Image.asset('lib/images/blank.png'),
        ),
      ),
    );
  }
}
