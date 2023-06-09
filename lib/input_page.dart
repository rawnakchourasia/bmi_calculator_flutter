import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets/icon_content.dart';
import './widgets/reusable_card.dart';

const double bottomContainerHeight = 80;
const Color activeCardColor = Color(0xff1d1e33);
const Color inactiveCardColor = Color(0xff111328);
const Color bottomContainerColor = Color(0xffeb1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff0a0e21);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(children: [
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              child: ReusableCard(
                colour: selectedGender == Gender.male
                    ? activeCardColor
                    : inactiveCardColor,
                cardChild: const IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: "MALE",
                ),
              ),
            )),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCard(
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                ),
              ),
            )
          ])),
          Expanded(
              child: Row(children: const [
            Expanded(
                child: ReusableCard(
              colour: activeCardColor,
            ))
          ])),
          Expanded(
              child: Row(children: const [
            Expanded(
                child: ReusableCard(
              colour: activeCardColor,
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            )
          ])),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
