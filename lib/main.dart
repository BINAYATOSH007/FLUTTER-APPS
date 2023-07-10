import 'dart:collection';
import 'question.dart';

import 'package:flutter/material.dart';

void main() =>  runApp( Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
            child:Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(),
            )
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {



  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  // List<String> questions = [
  //   'Sharks are mammals.',
  //   'An ant can lift 1,000 times its body weight.',
  //   'Mount Everest is the tallest mountain in the world.',
  //   'Galapagos tortoises sleep up to 16 hours a day.',
  //   'It takes a sloth two weeks to digest a meal.'
  // ];
  // List<bool> answers = [false, false, true, true, true];
  // Question q1=Question(q:'Sharks are mammals.',a:false);
  List<Question>questionbank=[
    Question(q: 'Sharks are mammals.', a:false ),
    Question(q: 'An ant can lift 1,000 times its body weight.', a: false),
    Question(q: 'Mount Everest is the tallest mountain in the world.', a: true),
    Question(q: 'Galapagos tortoises sleep up to 16 hours a day.', a: true ),
    Question(q:  'It takes a sloth two weeks to digest a meal.', a: true )

  ];



  int questionnumber=0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
       Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                questionbank[questionnumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,),
              onPressed: () {
                bool correctanswer =questionbank[questionnumber].questionAnswer;
                if(correctanswer==true){
                  print('user is right');

                }
                else{
                  print('user is wrong');
                }

                setState(() {

                  questionnumber++;

                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.greenAccent,

                  ),
                  );

                });
                print(questionnumber);
              },
              child:  const Text(
                'true',
                style: TextStyle(fontSize: 40),
                
              ),
            ),


          ),
        ),



        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,),
              onPressed: () {
                bool correctanswer =questionbank[questionnumber].questionAnswer;
                if(correctanswer==false){
                  print('user is right');

                }
                else{
                  print('user is wrong');
                }

                setState(() {
                  questionnumber++;

                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );

                });
                print(questionnumber);
              },
              child:  const Text(
                'false',
                style: TextStyle(fontSize: 40),

              ),
            ),


          ),
        ),
    Row(
      children: scoreKeeper,
    )

      ],
    );
  }
}



