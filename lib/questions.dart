import 'package:flutter/material.dart';
import 'package:quizapp/questionlist.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 20, 0),
                child: Text(
                  _question[ind].qus,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 260,
              ),
              TextButton(
                onPressed: () {
                  compare(true);
                  nextqus();
                },
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, fixedSize: Size(600, 50)),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  compare(false);
                  nextqus();
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, fixedSize: Size(600, 50)),
              ),

              SizedBox(height: 10,),

              Text(result, style: TextStyle(color:Colors.white, fontSize: 16),)

            ],
          ),
        ),
      ),
    );
  }

  List _question = [
    Quiz(qus: "A car has four wheels", ans: true),
    Quiz(qus: "Bike has 3 wheels", ans: false),
    Quiz(qus: "The Moon revolves around the Earth", ans: true),
    Quiz(qus: "The sky is blue in color", ans: true),
    Quiz(qus: "Human blood is green in color", ans: false),
    Quiz(qus: "India is an Asian country", ans: true),
    Quiz(qus: "Kerala is a state of America", ans: false),
    Quiz(qus: "125  is less than 30", ans: false),
    Quiz(qus: "Messi is a cricket player", ans: false),
    Quiz(qus: "A dog has 4 legs", ans: true)
  ];

  int ind = 0; // variable for question number
  String result="";

  void nextqus() {
    setState(() {
      if (ind < _question.length - 1) {
        ind++;
      }
    });
  }

  void compare(bool answer){

    if(answer==_question[ind].ans){

      result="Correct";

    }
    else{

      result="Incorrect";

    }

  }

}
