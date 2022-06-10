import 'package:respecia/function.dart';

import 'mainContainer.dart';
import 'package:flutter/material.dart';

class start extends StatefulWidget {
  @override
  _start createState() => _start();
}

class _start extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      height: 200,
                      width: 250,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: ExactAssetImage('lib/images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                      child: TextButton(
                        child: Text(
                          'Start the game',
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
                  )
                ],
              )
            ],
          ),
        )));
  }
}
