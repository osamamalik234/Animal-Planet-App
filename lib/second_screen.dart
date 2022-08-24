import 'package:animal_planet/third_screen.dart';
import 'package:animal_planet/widgets/custom_app_bar.dart';
import 'package:animal_planet/widgets/mini_container.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB98959),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Choose a Plan',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const MiniContainer(
                    amount: '190',
                    myImage: 'assets/loin2.png',
                    text: 'Weekly\nSubscription'),
                const MiniContainer(
                    amount: '210',
                    myImage: 'assets/bhaloo.jpg',
                    text: 'Monthly\nSubscription'),
                const MiniContainer(
                    amount: '560',
                    myImage: 'assets/deer.jpg',
                    text: '3 Monthly\nSubscription'),
                const MiniContainer(
                    amount: '1200',
                    myImage: 'assets/tiger.jpg',
                    text: '9 Monthly\nSubscription'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Lets get started',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdScreen()));
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
