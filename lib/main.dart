// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice App'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                changeDiceNumber();
              },
              backgroundColor: Colors.blue,
              child: Text('$leftNumber'),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                changeDiceNumber();
              },
              backgroundColor: Colors.blue,
              child: Text('$rightNumber'),
            ),
          ),
        ],
      ),
    );
  }
}
