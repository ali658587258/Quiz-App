import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconLevels extends StatelessWidget {
final String level;
final Color? backgroundColor;
final function;


IconLevels({required this.level, required this.backgroundColor,required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 20,
          child: Text(level,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.white),),

      ),
    );
  }
}
