import 'package:flutter/material.dart';
import 'package:first_app/gradie_container.dart';

void main() {
  // keyword, 중요한 단어라서, 이미 사전에 약속된 이름
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.cyan, Colors.teal),
      ),
    ),
  );
}
