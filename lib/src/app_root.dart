import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/secreens/question_screen.dart';
import 'package:quizzles/secreens/welcome_screen.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen()
    );
  }
}
