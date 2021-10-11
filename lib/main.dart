import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Basic Widget"),),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const [
              Text("Welcome to Flutter Development"),
              Text("Let's try some widget")
            ],
          )
        ),
      ),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("My Home Page")),
        body: const Center(
          child: Text("Welcome to My Home Page"),
        ),
      ),
    );
  }
}

