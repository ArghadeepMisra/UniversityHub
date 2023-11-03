import 'package:flutter/material.dart';

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        "lib/assets/ID Card.png",
        width: 400,
      )
    ]);
  }
}
