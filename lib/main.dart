import 'dart:ui';

import 'package:crossword/CheckPoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int selectedButton = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrossWord',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    Widget buttonplay = GestureDetector(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage1(
                      title: '1',
                    )))
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
          'PLAY',
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
      ),
    );
    Widget buttonexit = GestureDetector(
      onTap: () => {SystemNavigator.pop()},
      child: Container(
        width: 198,
        height: 55,
        padding: EdgeInsets.only(left: 63, top: 5),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          children: [
            Container(
              child: const Text(
                'EXIT',
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            )
          ],
        ),
      ),
    );
    Widget textcrossword = Container(
        padding: EdgeInsets.only(top: 200, right: 40, bottom: 50),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  /*2*/
                  Container(
                    child: const Text(
                      'CROSS',
                      style: TextStyle(color: Colors.yellow, fontSize: 50),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 90),
                    child: const Text(
                      'WORD',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
    Widget text = Container(
      padding: const EdgeInsets.only(bottom: 25),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Column(children: [
        textcrossword,
        buttonplay,
        text,
        buttonexit,
      ]),
    );
  }
}
