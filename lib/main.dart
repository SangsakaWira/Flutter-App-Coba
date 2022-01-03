// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var answer = "Belum Jawab";

  answerQuestion(jawaban) {
    setState(() {
      answer = jawaban;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter v.1.0.1',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text("Apa ibukota negara Indonesia?"),
            ),
            Center(
              child: RaisedButton(
                  child: const Text("A. Bandung"),
                  onPressed: () {
                    answerQuestion("Bandung");
                  }),
            ),
            RaisedButton(
                child: const Text("B. DKI Jakarta"),
                onPressed: () {
                  answerQuestion("DKI Jakarta");
                }),
            RaisedButton(
                child: const Text("C. Surabaya"),
                onPressed: () {
                  answerQuestion("Surabaya");
                }),
            RaisedButton(
                child: const Text("D. Medan"),
                onPressed: () {
                  answerQuestion("Medan");
                }),
            Text("Jawaban Anda: " + answer)
          ],
        ),
      ),
    );
  }
}
