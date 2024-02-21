import "package:flutter/material.dart";
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var random = Random();
  int num = 1;
  void onClick() {
    setState(() {
      num = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$num.png",
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: onClick,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
