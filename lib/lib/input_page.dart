import 'package:bmical/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'buttom_button.dart';
import 'round_icon_button.dart';
import 'brain_cal.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolour = kInactivccolor;
  Color femalecardcolour = kInactivccolor;
  int height=180;
  int weight=75;
  int age=20;

  void updatecolor(int gender) {
    //1=male,2=female
    if (gender == 1) {
      if (malecardcolour == kInactivccolor) {
        malecardcolour = kActivccolor;
        femalecardcolour = kInactivccolor;
      } else {
        malecardcolour = kInactivccolor;
      }
    }

    if (gender == 2) {
      if (femalecardcolour == kInactivccolor) {
        femalecardcolour = kActivccolor;
        malecardcolour = kInactivccolor;
      } else {
        femalecardcolour = kInactivccolor;
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor:Color(0xFF0A0E21) ,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
              children: <Widget>[
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                    updatecolor(1);
                    });
                  },
                  child: Reuse(
                    colour:malecardcolour,
                    cardChild: IconContent(
                      icon:FontAwesomeIcons.mars ,
                      label: 'MALE',
                    ),
                  ),
                ),
                ),
                Expanded(child:GestureDetector(
                  onTap: (){
                    setState(() {
                      updatecolor(2);
                    });
                  },
                  child: Reuse(

                    colour:femalecardcolour,
                    cardChild: IconContent(
                      icon:FontAwesomeIcons.venus ,
                      label: 'FEMALE' ,
                    ),
                  ),
                ),
                ),
              ],
          )),
          Expanded(child: Reuse(colour:kActivccolor,cardChild:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HEIGHT(CM)',
              style:kLabeltextstyle
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    height.toString(),
                    style: kNumbertextstyle,
                  ),
                  Text(
                    'cm',
                    style: kNumbertextstyle,
                  )
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Color(0xFFEB1555),
                  activeTrackColor: Colors.white,
                  overlayColor: Color(0x29EB1555),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(value: height.toDouble(),
                min: 120.0,
                  max:220.0,

                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                  setState(() {
                    height=newValue.round();
                  });

                  },
                ),
              )



            ],
          ) ,
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Reuse(colour: kActivccolor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WEIGHT(KG)',
                      style: kLabeltextstyle,
                    ),
                    Text(
                      weight.toString(),
                      style: kNumbertextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       RoundIconButton(icon: FontAwesomeIcons.minus,
                         onPressed: (){
                         setState(() {
                           weight--;
                         });
                         },
                       ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.plus,
                          onPressed: (){
                          setState(() {
                            weight++;
                          });
                          },
                        ),
                      ],
                    )
                  ],
                ) ,
              ),
              ),
              Expanded(child: Reuse(colour: kActivccolor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                      style: kLabeltextstyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumbertextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ) ,

              ),
              ),
            ],
          ),
          ),
          BottomButton(buttonTitle: 'CALCULATE',
            onTap:(){
            CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getinterpretation(),
              ),
              ),
              );
            } ,
          ),
        ],
      )
    );
  }
}











