import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowScoreDialog extends StatelessWidget {
  final String text;
  final function;


  ShowScoreDialog({required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(text),
      content: ElevatedButton(
        child: const Text('Try Again'),
        onPressed: function
      ),
    );
  }
}
