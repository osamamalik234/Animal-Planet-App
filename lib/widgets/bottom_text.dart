import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 30, right: 30),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: 'Ready to Watch',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: '\n',
          ),
          TextSpan(
              text: 'Today i am going to tell you something very'
                  ' special which you have probably never seen but'
                  ' i would like to share some of those so please be'
                  ' ready for that and lets get started.'),
          TextSpan(
            text: '\n',
          ),
          TextSpan(text: '\n'),
          TextSpan(
            text: 'Start Enjoying',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ]),
      ),
    );
  }
}
