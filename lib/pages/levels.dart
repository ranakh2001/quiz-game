// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class Levels extends StatelessWidget {
  String image;
  String levelnum;
  String levelname;
  Color gcolor1;
  Color gcolor2;

  Levels({
    Key? key,
    required this.image,
    required this.levelnum,
    required this.levelname,
    required this.gcolor1,
    required this.gcolor2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [gcolor1, gcolor2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white)),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Level $levelnum",
                style: const TextStyle(
                    fontFamily: "Sf-Pro-Text",
                    color: Colors.white,
                    fontSize: 16),
              ),
              Text(
                levelname,
                style: const TextStyle(
                    fontFamily: "Sf-Pro-Text",
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            image,
            width: 120,
            height: 120,
          ),
        )
      ],
    );
  }
}
