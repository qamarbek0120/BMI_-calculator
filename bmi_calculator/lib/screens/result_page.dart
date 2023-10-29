import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretetion});

  final String bmiResult;
  final String  resultText;
  final String interpretetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20.0) ,
              child: Text(
                'Your Results',
                style: ktitleStyele
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: (){},
              alternative: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center ,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                  style: kresultTextStyle
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle
                  ),
                  Text(
                    interpretetion,
                    style: kslightlysmallerStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return BMICalculator();
                  }
                )
              );
            },
            buttonTitle: 'Recalculate',
          )
        ],
      )
    );
  }
}
