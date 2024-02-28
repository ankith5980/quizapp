import 'package:flutter/material.dart';

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
                  'Question 1',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 380,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, fixedSize: Size(600,50)
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('False', style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red, fixedSize: Size(600, 50)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
