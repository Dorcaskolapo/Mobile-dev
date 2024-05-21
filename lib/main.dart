import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 2;
  int rightButton = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftButton.png'),
              onPressed: () {
                setState(() {
                  leftButton = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightButton.png'),
              onPressed: () {
                setState(() {
                  rightButton = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
