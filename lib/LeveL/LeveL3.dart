import 'dart:math';

import 'package:crossword/CheckPoint.dart';
import 'package:crossword/En/RandomEn.dart';
import 'package:crossword/GameOver.dart';
import 'package:crossword/LeveL/LeveL2.dart';
import 'package:crossword/LeveL/Level4.dart';
import 'package:crossword/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyLeveL3 extends StatefulWidget {
  const MyLeveL3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyLeveL3> createState() => LeveL3();
}

class LeveL3 extends State<MyLeveL3> {
  List<String> alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  vocabulary state = vocabulary();
  Game game_1 = Game();
  int tries = 0;
  @override
  Widget build(BuildContext context) {
    Widget chrck = Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage1(
                          title: '',
                        )));
          },
          child: Icon(Icons.arrow_circle_left, size: 35),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${state.ranEN} = ${state.ranTH}",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${state.ranEN1} = ${state.ranTH1}",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            height: 50,
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyLeveL4(title: '')));
            },
            child: Container(
              width: 198,
              height: 55,
              padding: EdgeInsets.only(left: 58, top: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(
                'NEXT',
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
          ),
        ],
      ),
    );
    Widget letter(String character, bool hidden) {
      return Container(
        height: 65,
        width: 60,
        alignment: Alignment.center,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Visibility(
          visible: !hidden,
          child: Text(
            character,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage1(
                          title: '',
                        )));
          },
          child: Icon(Icons.arrow_circle_left, size: 35),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Text("LEVEL 3",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          Container(
            child: Text(
              "ตอบผิดได้ไม่เกิน 15 ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "ANSWER WRONG ${tries}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: state.ranEN
                .toString()
                .split('')
                .map((e) => letter(e.toUpperCase(),
                    !game_1.selectecd.contains(e.toUpperCase())))
                .toList(),
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: state.ranEN1
                .toString()
                .split('')
                .map((e) => letter(e.toUpperCase(),
                    !game_1.selectecd.contains(e.toUpperCase())))
                .toList(),
          ),
          Container(
            height: 80,
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 7,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: alphabets.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return LayoutBuilder(
                  builder: (context, Constraints) {
                    Color color = Colors.white;
                    return SizedBox(
                      height: 55,
                      width: 40,
                      child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Text(
                            "${alphabets[index]}".toUpperCase(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          fillColor: game_1.selectecd.contains(alphabets[index])
                              ? Colors.black87
                              : Colors.red,
                          onPressed: game_1.selectecd.contains(alphabets[index])
                              ? null
                              : () {
                                  setState(() {
                                    game_1.selectecd.add(alphabets[index]);
                                    print(game_1.selectecd);
                                    if (!state.ranEN
                                        .toString()
                                        .split('')
                                        .contains(
                                            alphabets[index].toUpperCase())) {
                                      tries++;
                                      if (tries >= 15) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    GameOver()));
                                      }
                                    }
                                  });
                                }),
                    );
                  },
                );
              },
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => chrck));
            },
            child: Container(
              width: 198,
              height: 55,
              padding: EdgeInsets.only(left: 25, top: 8),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(
                'ANSWER',
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
