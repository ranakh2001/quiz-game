// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:multi_quiz_s_t_tt9/pages/top_icon.dart';

import '../constants.dart';
import '../t_f_questionBrain.dart';

class ToFQuiz extends StatefulWidget {
  const ToFQuiz({super.key});

  @override
  State<ToFQuiz> createState() => _ToFQuizState();
}

class _ToFQuizState extends State<ToFQuiz> {
  QuizBrain quizBrain = QuizBrain();
  bool isAnswered = false;
  Color answerColor = Colors.white;
  Color othersColor = Colors.white;
  late bool useranswer;
  late int questionnum;
  late int questionslength;
  double value = 0.0;

  @override
  void initState() {
    super.initState();
    useranswer = false;
    questionnum = quizBrain.getQuestionNum();
    questionslength = quizBrain.getquestionsLength();
  }

  void answer(bool userAnswer) {
    setState(() {
      isAnswered = true;
      useranswer = userAnswer;
      if (userAnswer == quizBrain.getAnswer()) {
        answerColor = Colors.green;
      } else {
        answerColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(gradient: LinearGradient(colors: [kL1, kL12])),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomIcon(
                          iconColor: Colors.white,
                          borderColor: Colors.white,
                          icon: Icons.close)),
                  Stack(alignment: Alignment.center, children: [
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: CircularProgressIndicator(
                        value: value,
                        color: Colors.white,
                        backgroundColor: Colors.white24,
                      ),
                    ),
                    Text(
                      "0$questionnum",
                      style: const TextStyle(
                          fontSize: 25,
                          fontFamily: "Sf-Pro-Text",
                          color: Colors.white),
                    )
                  ]),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "3",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(child: Image.asset("assets/images/ballon-b.png")),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "question $questionnum of $questionslength",
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Sf-Pro-Text",
                    fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                quizBrain.getQuestion(),
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Sf-Pro-Text",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      backgroundColor: isAnswered
                          ? useranswer
                              ? answerColor
                              : othersColor
                          : othersColor,
                    ),
                    onPressed: isAnswered
                        ? null
                        : () {
                            answer(true);
                          },
                    child: Text(
                      "True",
                      style: TextStyle(
                        color: isAnswered
                            ? useranswer
                                ? Colors.white
                                : kL1
                            : kL1,
                        fontFamily: "Sf-Pro-Text",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      backgroundColor: isAnswered
                          ? useranswer
                              ? othersColor
                              : answerColor
                          : othersColor,
                    ),
                    onPressed: isAnswered
                        ? null
                        : () {
                            answer(false);
                          },
                    child: Text(
                      "False",
                      style: TextStyle(
                        color: isAnswered
                            ? useranswer
                                ? kL1
                                : Colors.white
                            : kL1,
                        fontFamily: "Sf-Pro-Text",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          quizBrain.nextQuestion();
                          answerColor = Colors.white;
                          othersColor = Colors.white;
                          value += 0.1;
                          isAnswered = false;
                          questionnum = quizBrain.getQuestionNum();
                          questionslength = quizBrain.getquestionsLength();
                        });
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontFamily: "Sf-Pro-Text",
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
