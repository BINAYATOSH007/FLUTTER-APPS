import 'package:bmical/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'buttom_button.dart';
class ResultsPage extends StatelessWidget {
ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI CALCULATOR'),
          backgroundColor:Color(0xFF0A0E21)
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitlestyle,

            ),

          ),
          ),
          Expanded(
            flex: 5,
            child: Reuse(colour: kActivccolor, cardChild:Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText.toUpperCase(),
                style: kResultTextStyle,
                ),
                Text(
                   bmiResult,
                  style: kBmiTextStyle,

                   ),
                Text(
                 interpretation,style: kBodytextstyle,
                  textAlign: TextAlign.center,
                ),

              ],
            ) ,
            ),
          ),
        BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
          Navigator.pop(context);
        },
        ),
        ],
      ),
    );
  }
}
