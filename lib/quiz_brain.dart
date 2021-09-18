import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questionBank = [
    Question('Olorin is the other name for Gandalf.', true),
    Question('Gandalf\'s age is less than then 100.', false),
    Question(
        'Legolas killed more orcs than Gimli in the battle for Gondor', false),
    Question('Mithrandir is a name for Gandalf.', true),
    Question(' The Capital Of Rohan Is Called Edoras.', true),
    Question('The Witch King Of Angmar Used To Be An Elf', false),
    Question('Isildur Is Aragorn\'s Grandfather.', false),
    Question(
        'Gandalf Tells Aragorn To Look To The East On The First Light Of The Fourth Day.',
        false),
    Question('The Balrog Gandalf Fought Is Known As Durin\'s Bane.', true),
    Question('Balin died in Moria', true),
  ];

  String getQueText() {
    return _questionBank[questionNumber].questionText;
  }

  bool getCorrectAns() {
    return _questionBank[questionNumber].answers;
  }

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }

  int queBankLength() {
    return _questionBank.length;
  }

  bool isFinished() {
    if (questionNumber == _questionBank.length - 1) {
      print("you pressed $questionNumber question");
      print(_questionBank.length);
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}
