import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          //to create a gradient the linear gradient takes a list(array of colors)
          colors: [
            Color.fromARGB(255, 116, 1, 183),
            Color.fromARGB(255, 244, 120, 120),
          ],
          begin: Alignment
              .topLeft, // gradient positioned from top left to bottom right
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
