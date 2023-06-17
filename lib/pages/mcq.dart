import 'package:flutter/material.dart';
import 'package:multi_quiz_s_t_tt9/constants.dart';

class MCQ extends StatefulWidget {
  const MCQ({
    super.key,
  });
  @override
  State<MCQ> createState() => _MCQState();
}

class _MCQState extends State<MCQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kBlueBg, kL2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: const ButtonStyle().copyWith(
                      shape: const MaterialStatePropertyAll(
                        CircleBorder(),
                      ),
                      side: const MaterialStatePropertyAll(
                          BorderSide(color: Colors.white)),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                  const Stack(alignment: Alignment.center, children: [
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: CircularProgressIndicator(
                        value: 0.5,
                        color: Colors.white,
                        backgroundColor: Colors.white24,
                      ),
                    ),
                    Text(
                      "05",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Sf-Pro-Text",
                          color: Colors.white),
                    )
                  ]),
                  OutlinedButton(
                      style: const ButtonStyle().copyWith(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                        side: const MaterialStatePropertyAll(
                            BorderSide(color: Colors.white)),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(34),
                child: Image.asset("assets/images/ballon-b.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "question 5 of 10",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Sf-Pro-Text",
                    color: Colors.white60),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "in which city of germany is the largest port ?",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Sf-Pro-Text",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16)),
                onPressed: () {},
                child: const Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Text(
                      "Bremen",
                      style: TextStyle(color: kL2),
                    )),
                    Icon(
                      Icons.check,
                      color: kL2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
