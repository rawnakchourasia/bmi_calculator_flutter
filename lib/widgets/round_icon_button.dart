import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6,
      constraints: const BoxConstraints.tightFor(width: 40, height: 40),
      shape: const CircleBorder(),
      fillColor: const Color(0XFF4C4F5E),
      child: Icon(icon),
    );
  }
}
