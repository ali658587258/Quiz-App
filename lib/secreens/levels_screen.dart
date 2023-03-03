import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/components/icon_levels.dart';
import 'package:quizzles/secreens/question_screen.dart';
import 'package:quizzles/secreens/welcome_screen.dart';

class LevelsScreen extends StatelessWidget{

static const routeName = '/ScreenLevels';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: CircleAvatar(
              radius: 17,
              backgroundColor: Color(0xff1f1180),
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                icon: Icon(Icons.arrow_back_outlined,size: 17,color: Colors.white,),
              )
          ),
        ),
        centerTitle: true,
        title: Text('Levels',style: TextStyle(fontSize: 22,color: Color(0xff36ebbd),fontWeight: FontWeight.w600,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xff1f1147),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0,right: 30,left: 30),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              crossAxisSpacing: 100
            ),
          children: [
            IconLevels(level: 'Level 1', backgroundColor: Color(0xff9475fd),function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return QuestionScreen();}));

            },),
            IconLevels(level: 'Level 2', backgroundColor: Color(0xff169ffe),function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return QuestionScreen();}));

            },),
            IconLevels(level: 'Level 3', backgroundColor: Color(0xfffb994a),function: (){
            },),
            IconLevels(level: 'Level 4', backgroundColor: Color(0xff31deb7),function: (){},),
            IconLevels(level: 'Level 5', backgroundColor: Color(0xfff73aaa),function: (){},),
            IconLevels(level: 'Level 6', backgroundColor: Color(0xff483881),function: (){},),
            IconLevels(level: 'Level 7', backgroundColor: Color(0xff224180),function: (){},),
            IconLevels(level: 'Level 8', backgroundColor: Color(0xfff9aa6b),function: (){},),
            IconLevels(level: 'Level 9', backgroundColor: Color(0xffa490fc),function: (){},),
            IconLevels(level: 'Level 10', backgroundColor: Color(0xffbdebe8),function: (){},),
          ],
        ),
      )
    );
  }
}
