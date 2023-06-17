// ignore_for_file: file_names

import 't_f_question.dart';

class QuizBrain {
  int _i = 0;
  final List<Question> _questions = [
    Question(
        "The Big Apple is a nickname given to Washington D.C in 1971.", true),
    Question("Muddy York is a nickname for New York in the Winter.", false),
    Question(
        "We cant sneeze or cough when in deep sleep. Our body must enter a state of wakefulness to do so. ",
        true),
    // Question('Some cats are actually allergic to humans', true),
    // Question('You can lead a cow down stairs but not up stairs.', false),
    // Question('Approximately one quarter of human bones are in the feet.', true),
    // Question('A slug\'s blood is green.', true),
    // Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    // Question('It is illegal to pee in the Ocean in Portugal.', true),
    // Question(
    //     'No piece of square dry paper can be folded in half more than 7 times.',
    //     false),
    // Question(
    //     'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    //     true),
    // Question(
    //     'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    //     false),
    // Question(
    //     'The total surface area of two human lungs is approximately 70 square metres.',
    //     true),
    // Question('Google was originally called \"Backrub\".', true),
    // Question(
    //     'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    //     true),
    // Question(
    //     'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    //     true),
  ];

  String getQuestion() {
    return _questions[_i].question;
  }

  bool getAnswer() {
    return _questions[_i].answer;
  }

  void nextQuestion() {
    if (_i < _questions.length - 1) {
      _i++;
    }
  }

  bool isFinished() {
    if (_i == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int getQuestionNum() {
    return _i;
  }

  int getquestionsLength() {
    return _questions.length;
  }

  reset() {
    _i = 0;
  }
}
