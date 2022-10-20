import 'package:crossword/Mygame.dart';
import 'package:crossword/main.dart';
import 'package:flutter/material.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage1> createState() => Checkpoint();
}

class Checkpoint extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    Widget Imvocabulary = GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyHomePage2(title: '')))
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 480,
                height: 240,
                padding: EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'Im/Voca.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: Icon(Icons.arrow_circle_left, size: 35),
        ),
      ),
      body: Column(children: [Imvocabulary]),
    );
  }
}
