import 'package:flutter/material.dart';

class MiniContainer extends StatelessWidget {
  final String amount;
  final String myImage;
  final String text;

  const MiniContainer(
      {Key? key,
      required this.amount,
      required this.myImage,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 105,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(myImage),
            fit: BoxFit.fitWidth,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              Text(
                '\$$amount',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ));
  }
}
