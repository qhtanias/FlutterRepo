import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('$number'),
            GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.blue,
                child: const Center(child: Text('Increment')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

