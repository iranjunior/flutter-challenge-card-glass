import 'package:card_glass/widgets/card_glass.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/background.png',
          fit: BoxFit.cover,
        ),
        Center(
          child: CardGlass(),
        )
      ],
    );
  }
}
