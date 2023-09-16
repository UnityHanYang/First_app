import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // GradientContainer.purpleOrange({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.deepOrange;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    // Width 을 반환하는 형태
    // void -> 반환할 것이 없다는 형태
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
