class Levels {
  final String levelText;
  final List<Question> questionList;

  Levels({required this.levelText, required this.questionList});
}

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer{
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions(){
  List<Question> list=[];
  list.add(
    Question("Who is the owner of Flutter?",
        [
          Answer('Nokia', false),
          Answer('Samsung', false),
          Answer('Google', true),
          Answer('Apple', false),
        ]
    ),

  );
  list.add(
    Question("Who owner Iphone?",
        [
          Answer('Apple', true),
          Answer('Nokia', false),
          Answer('Samsung', false),
          Answer('Google', false),
        ]
    ),

  );list.add(
    Question("Youtube is _______ platform?",
        [
          Answer('music sharing', false),
          Answer('video sharing', false),
          Answer('live sharing', false),
          Answer('All of the above', true),
        ]
    ),

  );list.add(
    Question("Flutter user dart as a language?",
        [
          Answer('True', true),
          Answer('False', false),
        ]
    ),

  );

  return list;
}




