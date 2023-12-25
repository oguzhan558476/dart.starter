import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';
import 'package:introapp/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  int currentQuestionIndex = 0; // O an kaçıncı soruda olduğumu
  List<int> answersIndex = [];

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > currentQuestionIndex) {
        currentQuestionIndex++;
      }
      else{
        Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(answersIndex)),
            );
      }
    }); // değişikliklerin ekrana da yansıtılması için gerekli..
    // setState => build fonkisyonunu yeniden çalıştırır.
  }

  void saveAnswer(int index) {
    answersIndex.add(index);
    changeQuestion();
  }
  // Spread Operator
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[
        currentQuestionIndex];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(currentQuestion.question),
                  if (MediaQuery.of(context).orientation == Orientation.landscape)
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2, // Yatay konum için iki sütunlu GridView
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: (MediaQuery.of(context).size.width / 2) / 50,
                      children: currentQuestion.answers.map((answer) {
                        return ElevatedButton(
                          child: Text(answer),
                          onPressed: () {
                            saveAnswer(questions[currentQuestionIndex].answers.indexOf(answer));
                          },
                        );
                      }).toList(),
                    )
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch, // Dikey konum için genişletmek gerekebilir
                      children: currentQuestion.answers.map((answer) {
                        return ElevatedButton(
                          child: Text(answer),
                          onPressed: () {
                            saveAnswer(questions[currentQuestionIndex].answers.indexOf(answer));
                          },
                        );
                      }).toList(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}