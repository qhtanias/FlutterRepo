import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.black,
          title: const Text(
            "Notes",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Container(
                height: 150,
                width: 500,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.brown,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.cyan,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 500,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "UI concepts worth\nexisting",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Image.asset("assets/1784198010023.jpg")),
      ),
    );
  }
}
