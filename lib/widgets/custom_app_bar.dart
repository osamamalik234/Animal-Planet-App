import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
            children: [
              TextSpan(
                text: 'Animal',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const TextSpan(
                text: '\n',
              ),
              const TextSpan(
                text: 'We love the Animal',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
