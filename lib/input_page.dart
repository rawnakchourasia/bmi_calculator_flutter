import 'package:flutter/material.dart';

const double bottomContainerHeight = 20;
const Color activeCardColor = Color(0xff1d1e33);
const Color bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

class ReusableCard extends StatelessWidget {
  final Color colour;
  const ReusableCard({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
    );
  }
}
