import 'package:bmr_calculator/bmr_brain.dart';
import 'package:bmr_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmr_calculator/components/reusable_card.dart';
import 'package:bmr_calculator/components/navigation_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({super.key, required this.bmrBrain});
  BmrBrain bmrBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMR CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Center(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: Colors.black,
                iconChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          bmrBrain.calculateBmr().round().toString(),
                          style: kBMRTextStyle,
                        ),
                        Text(
                          'Calories/day',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        '''The Basal Metabolic Rate (BMR) provides an estimate of the energy your body uses at rest in a comfortable environment.''',
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
          ),
          NavigationButton(
              onpressed: () {
                Navigator.pop(context);
              },
              navigationText: "RECALCULATE")
        ],
      ),
    );
  }
}
