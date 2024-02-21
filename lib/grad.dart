import "package:flutter/material.dart";

class GradientAbc extends StatelessWidget {
  const GradientAbc(this.clr1, this.clr2, {super.key});
  final Color clr1;
  final Color clr2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            clr1,
            clr2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
