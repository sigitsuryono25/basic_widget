import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefulEx());
}

//stateless widget
//lebih ke pengaturan theme dll sebelum aplikasi muncul di layar
class MyStatefulEx extends StatelessWidget {
  const MyStatefulEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyStateful(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String myValue = "Welcome";
  bool isInit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(myValue),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isInit) {
                    myValue = "Sigit Suryono";
                    isInit = false;
                  } else {
                    myValue = "welcome";
                    isInit = true;
                  }
                });
              },
              child: const Text("Change Value"),
            ),
          ],
        ),
      ),
    );
  }
}
