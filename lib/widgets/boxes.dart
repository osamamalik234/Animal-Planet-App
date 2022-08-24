import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  final String myImage;
  final String chooser_text;
  const Boxes({Key? key, required this.myImage, required this.chooser_text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 7),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.brown.shade500,
          ),
          child: Image.asset(myImage),
        ),
        Text(
          chooser_text,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
