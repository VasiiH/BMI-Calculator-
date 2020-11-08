import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style: kNumberLabelStyle,)
          ),
        ),
        Expanded
          (flex:5,
            child: ReusableCard(
              colour: kInactiveCardColor,
              childCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),
                  style: kResultTextStyle,),
                  Text(bmiResult,
                    style: kBMIResult,),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kLargeBodyStyle ,
                  )
                ],
            ),
            ),
        ),
        BottomButton(onTap: (){
          Navigator.pop(context);
        }, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
