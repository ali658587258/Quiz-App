import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/components/showScoreDialog.dart';
import 'package:quizzles/models/question_model.dart';

class QuestionScreen extends StatefulWidget {

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex =0;
  int score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1147),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question ${currentQuestionIndex+1}/${questionList.length}',
              style:const TextStyle(
                color: Color(0xff36ebbd),
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(questionList[currentQuestionIndex].questionText,
                  style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),
                ),
              ),
              _answerList(),
              SizedBox(
                height: 100,
              ),
              _nextButton()

            ],
          ),
        ),
      ),
    );
  }

  _answerList(){
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map((e) => _answerButton(e),
      )
          .toList(),

    );
  }

  Widget _answerButton(Answer answer){
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Color(0xff36ebbd) : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black87
        ),
        onPressed: (){
            setState(() {
              if(selectedAnswer==null)
                {
                  if(answer.isCorrect){
                    score++;
                  }
                }
              selectedAnswer = answer;
            });
          }
      ),
    );
  }
  _nextButton(){
    bool isLastQuestion = false;
    if(currentQuestionIndex == questionList.length-1)
      {
        isLastQuestion = true;
      }
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? 'Submit' : 'Next'),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary:  Color(0xff6a49fe),
          onPrimary:Colors.white
        ),
        onPressed: (){
          if(isLastQuestion){
            showDialog(context: context, builder: (_)=> ShowScoreDialog(
              text: 'Your Score ${score.toString()}',
              function: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  selectedAnswer = null;
                });
              }
          ));
        }
        else{
          setState(() {
            selectedAnswer = null;
            currentQuestionIndex++;
          });
        }
      },
    ),
  );

  }
}