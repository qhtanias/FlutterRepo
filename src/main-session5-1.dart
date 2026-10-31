import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .end,
          children: [
            // status bar area (handled by SafeArea automatically)
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.green),

            Text("hello world"),
          ],
        ),
      ),
    );
  }
}

//status bar
//danger area
//bottom bar
