import 'file:///C:/Users/omarw/AndroidStudioProjects/bmi_calculator/lib/components/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottomButton.dart';
import '../components/roundIconButton.dart';
class Result extends StatelessWidget {
  Result({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0A0E21),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text('YOUR RESULT',style: kTitleTextStyle,),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color:kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),style: kResultTextStyle,),
                    Text(bmiResult,style: kBMITextStyle,),
                    Text(interpretation,style:kBodyTextStyle,textAlign:TextAlign.center)
                  ],
                ),
              ),
            ),
    //
            BottomButton(buttonTitle: 'Re-Calculate', onTap: (){Navigator.pop(context);},)

          ],
        ),
      ),
    );
  }
}

