import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  const color1 = Color(0xff448afe);
  const color2 = Color(0xff40c4fe);

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        title: const Center(child: Text('Pergunte Qualquer Coisa')),
        backgroundColor: color1,
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
  var number = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(4) + 1;
                });
              },
              style: TextButton.styleFrom(padding: const EdgeInsets.all(16)),
              child: Image.asset('images/ball$number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
