import 'dart:math';
import 'package:flutter/material.dart';

import 'main.dart';

int score = 0;
int cardCount = 1;
int previous = 0;
String img = "";
List<cardDeck> cardsList = [];
List<cardDeck> geussCardsLists = [];

void callComponents() {
  cardsList = [];
  geussCardsLists = [];
  int counter = 1;
  for (int i = 0; i < 52; i++) {
    cardDeck sc = cardDeck();
    sc.cardId = i + 1;
    sc.pathImg = (i + 1).toString() + ".png";

    if (counter <= 13) {
      sc.equavalent = counter;
      counter++;
    } else {
      counter = 1;
      sc.equavalent = counter;
      counter++;
    }
    cardsList.add(sc);
  }
  ChecktheCard('initiate');
  score = 0;
  cardCount = 1;
}

bool ChecktheCard(String action) {
  int guessedCard = 0;
  int randomres = 0;
  bool isnotGuessed = false;
  while (!isnotGuessed) {
    Random r = new Random();
    int low = 1;
    int high = cardsList.length;
    randomres = r.nextInt(high - low) + low;
    bool isExist = false;
    for (int i = 0; i < cardsList.length; i++) {
      if (randomres == cardsList[i].cardId) {
        isnotGuessed = true;
        img = cardsList[i].pathImg;
        guessedCard = cardsList[i].equavalent;
        if (action != 'initiate') {
          geussCardsLists.add(cardsList[i]);
        }
        cardsList.remove(cardsList[i]);
      }
    }
  }
  if (action == 'high') {
    if (guessedCard >= previous) {
      previous = guessedCard;
      return true;
    } else {
      previous = guessedCard;
      return false;
    }
  } else if (action == 'low') {
    if (guessedCard < previous) {
      previous = guessedCard;
      return true;
    } else {
      previous = guessedCard;
      return false;
    }
  } else {
    previous = guessedCard;
    return false;
  }
}
