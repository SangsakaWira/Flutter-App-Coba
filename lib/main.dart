import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: [
            Center(
              child: Text("Apa ibukota negara Indonesia?"),
            ),
            RaisedButton(
                child: Text("A. Bandung"),
                onPressed: () => {print("A. Bandung")}),
            RaisedButton(
                child: Text("B. DKI Jakarta"),
                onPressed: () => {print("B. DKI Jakarta")}),
            RaisedButton(
                child: Text("C. Surabaya"),
                onPressed: () => {print("C. Surabaya")}),
            RaisedButton(
                child: Text("D. Medan"), onPressed: () => {print("D. Medan")})
          ],
        ),
      ),
    );
  }
}
