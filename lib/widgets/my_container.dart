import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String myImage;
  const MyContainer(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.myImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                myImage,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(
            text1,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
