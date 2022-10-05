import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title:Text('Ask me anything'),
      ),
      body: Ball(),
     );
  }
}

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballNumber=1;
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
          onPressed: (){
            setState(() {
              ballNumber=Random().nextInt(5)+1;
            });
          },
          child:Image.asset('images/ball$ballNumber.png'),
        ),
      );
  }
}