import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Should I Work Or No ?'),
          backgroundColor: Colors.blueAccent,
        ),
        body: WorkPage(),
      ),
    ),
  );
}

class WorkPage extends StatefulWidget {
  const WorkPage({Key key}) : super(key: key);

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  int workNumber = 1;

  void changeDiceFace() {
    setState(() {
      workNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
                print('workNumber = $workNumber');
              },
              child: Image.asset('images/worker$workNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
