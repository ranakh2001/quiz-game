import 'package:flutter/material.dart';

import '../constants.dart';
import 'levels.dart';
import 'top_icon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomIcon(
                      icon: Icons.favorite,
                      iconColor: kBlueIcon,
                      borderColor: Colors.grey[300]!,
                    ),
                    CustomIcon(
                      icon: Icons.person,
                      iconColor: kBlueIcon,
                      borderColor: Colors.grey[300]!,
                    ),
                  ],
                ),
                const Text(
                  "Let's Play",
                  style: TextStyle(
                      color: kRedFont,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: "Sf-Pro-Text"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Be the first!",
                  style: TextStyle(
                    color: kGreyFont,
                    fontSize: 16,
                    fontFamily: "Sf-Pro-Text",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/true_or_false");
                  },
                  child: Levels(
                    image: "assets/images/bags.png",
                    levelnum: "1",
                    levelname: "True OR False",
                    gcolor1: kL1,
                    gcolor2: kL12,
                  ),
                ),
                Levels(
                  image: "assets/images/ballon-s.png",
                  levelnum: "2",
                  levelname: "Multiple choice",
                  gcolor1: kL2,
                  gcolor2: kL22,
                ),
                Levels(
                  image: "assets/images/camera.png",
                  levelnum: "3",
                  levelname: "Experienced",
                  gcolor1: kL3,
                  gcolor2: kL32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
