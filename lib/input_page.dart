import 'package:flutter/material.dart';

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
              child: Row(children: [
            Expanded(
                child: ReusableCard(
              colour: const Color(0xff1d1e33),
            )),
            Expanded(
              child: ReusableCard(
                colour: const Color(0xff1d1e33),
              ),
            )
          ])),
          Expanded(
              child: Row(children: [
            Expanded(
                child: ReusableCard(
              colour: const Color(0xff1d1e33),
            ))
          ])),
          Expanded(
              child: Row(children: [
            Expanded(
                child: ReusableCard(
              colour: const Color(0xff1d1e33),
            )),
            Expanded(
              child: ReusableCard(
                colour: const Color(0xff1d1e33),
              ),
            )
          ])),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour});

  final Color colour;

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
