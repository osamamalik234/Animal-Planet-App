import 'package:animal_planet/consonants.dart';
import 'package:animal_planet/widgets/boxes.dart';
import 'package:animal_planet/widgets/custom_app_bar.dart';
import 'package:animal_planet/widgets/my_container.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.45,
            child: Stack(
              children: [
                const Image(
                  image: AssetImage('assets/loin2.png'),
                  // fit: BoxFit.fitWidth,
                ),
                Column(
                  children: const [
                    CustomAppBar(),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Welcome to \nNew Planet',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.69,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                color: Color(0xffB98959),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Related to You',
                      style: text_style,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          MyContainer(
                            myImage: 'assets/wild_animals.jpeg',
                            text1: 'Wild Animals',
                            text2:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MyContainer(
                              text1: 'Life of a Tiger',
                              text2:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              myImage: 'assets/monthly.jpg'),
                          SizedBox(
                            width: 20,
                          ),
                          MyContainer(
                            text1: 'Elephant',
                            text2:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                            myImage: 'assets/6monthly.jpg',
                          ),
                        ],
                      ),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Quick Categories',
                      style: text_style,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Boxes(
                            myImage: 'assets/pets.png',
                            chooser_text: 'Pet',
                          ),
                          Boxes(
                            myImage: 'assets/reptiles.png',
                            chooser_text: 'Reptiles',
                          ),
                          Boxes(
                            myImage: 'assets/lion.png',
                            chooser_text: 'Lion',
                          ),
                          Boxes(
                            myImage: 'assets/bear.png',
                            chooser_text: 'Bear',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
