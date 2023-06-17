import 'package:flutter/material.dart';

import '../constants.dart';
import 'top_icon.dart';

class TrueOrFalse extends StatefulWidget {
  const TrueOrFalse({super.key});

  @override
  State<TrueOrFalse> createState() => _TrueOrFalseState();
}

class _TrueOrFalseState extends State<TrueOrFalse> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kL1, kL12],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CustomIcon(
                      icon: Icons.close,
                      iconColor: Colors.white,
                      borderColor: Colors.white,
                    ),
                  )
                ],
              ),
              Center(child: Image.asset("assets/images/ballon-b.png")),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Level 1",
                style: TextStyle(
                    fontFamily: "Sf-Pro-Text",
                    fontSize: 24,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contenuing",
                style: TextStyle(
                    fontFamily: "Sf-Pro-Text",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Do you feel confident? Here youll challenge one of our most difficull travel questions!",
                style: TextStyle(fontSize: 16, color: Colors.white),
                softWrap: true,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/true_or_false_quiz");
                    },
                    child: const Text(
                      "Game",
                      style: TextStyle(
                          color: kL1,
                          fontFamily: "Sf-Pro-Text",
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  }
}


