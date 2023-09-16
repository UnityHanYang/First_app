import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImages = 'assets/foodimg/food1.png';
  var currenDiceRoll = 2;

  void rollDice() {
    setState(() {
      currenDiceRoll= randomizer.nextInt(10) + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/foodimg/food$currenDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            /*padding: const EdgeInsets.only(
                  top: 20,
                ),*/
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32,
            )
          ),
          child: const Text('메뉴 랜덤 뽑기'),
        )
      ],
    );
  }
}
