import 'package:animal_planet/second_screen.dart';
import 'package:animal_planet/widgets/bottom_text.dart';
import 'package:animal_planet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage('assets/loin.webp'),
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: const [
              CustomAppBar(),
              Spacer(),
              BottomText(),
            ],
          ),
          Positioned(
            bottom: -20,
            right: -20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Align(
                  alignment: Alignment(-0.4, -0.2),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
