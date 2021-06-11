import 'package:card_glass/widgets/content_card.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class CardGlass extends StatelessWidget {
  const CardGlass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      padding: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.transparent,
            Colors.white,
          ],
          begin: Alignment(1, 1),
          end: Alignment(-0.9, -1.5),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Stack(
            children: [
              Container(
                color: Colors.black.withOpacity(0.1),
              ),
              ContentCard()
            ],
          ),
        ),
      ),
    );
  }
}
