import 'package:flutter/material.dart';
import 'package:introapp/swiper_screen.dart';
import 'package:introapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
  final List<int> answersIndex;
  const ResultScreen(this.answersIndex, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            ElevatedButton(
              child: const Text("Yeniden Başlat"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SwiperScreen(),
                  ),
                );
              },
            ),
          ],
          title: const Text(
            "Sonuçlarınız",
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final item = questions[index];
                     final String selectedAnswer = item.answers[answersIndex[index]];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(item.question,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        Text(selectedAnswer,
                        style: TextStyle(backgroundColor: Colors.blue),),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
