import 'package:crossword/CheckPoint.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              height: 320,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "GAME OVER",
                style: TextStyle(fontSize: 100, color: Colors.red),
              ),
            ),
            Container(
              height: 20,
            ),
            GestureDetector(
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
                  'BACK',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
            ),
          ],
        ));
  }
}
