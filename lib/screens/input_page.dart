import 'package:bmr_calculator/bmr_brain.dart';
import 'package:flutter/material.dart';
import 'package:bmr_calculator/constants.dart';
import 'package:bmr_calculator/screens/results_page.dart';
import 'package:bmr_calculator/components/navigation_button.dart';
import 'package:bmr_calculator/components/reusable_card.dart';
import 'package:bmr_calculator/components/rounded_button.dart';
import 'package:bmr_calculator/components/male_female_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;
  int weight = 60;
  int age = 25;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "BMR CALCULATOR",
          style: TextStyle(color: Color(0xFFFBC02D)),
        )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ReusableCard(
                    margin: 30,
                    borderRadius: 200,
                    ontap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    colour: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    iconChild: const MaleFemaleIcon(
                      mfIcon: FontAwesomeIcons.mars,
                      label: 'Male',
                    )),
              ),
              Expanded(
                child: ReusableCard(
                    margin: 30,
                    borderRadius: 200,
                    ontap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    colour: gender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    iconChild: const MaleFemaleIcon(
                      mfIcon: FontAwesomeIcons.venus,
                      label: 'Female',
                    )),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: Colors.black,
            // kActiveCardColor,
            iconChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toInt().toString(),
                      style: kNumberTextStyle,
                    ),
                    const Text(
                      "cm",
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      activeTrackColor: kActiveTrackColor,
                      thumbColor: kThumbColor,
                      inactiveTrackColor: kInactiveTrackColor,
                      overlayColor: kOverlayColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
                  child: Slider(
                      value: height,
                      min: 120,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ReusableCard(
                    colour: Colors.black,
                    // kActiveCardColor,
                    iconChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'kg',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            const SizedBox(
                              width: 15,
                            ),
                            RoundedButton(
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus)
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                child: ReusableCard(
                    colour: Colors.black,
                    // kActiveCardColor,
                    iconChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            SizedBox(width: 15),
                            RoundedButton(
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus)
                          ],
                        ),
                      ],
                    )),
              )
            ],
          )),
          NavigationButton(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                            bmrBrain: BmrBrain(
                                weight: weight,
                                height: height,
                                gender: gender,
                                age: age))));
              },
              navigationText: "CALCULATE")
        ],
      ),
    );
  }
}
