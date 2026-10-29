import 'package:flutter/material.dart';

void main() {
  // FIX 1: Run the correct App widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // FIX 2: Corrected constructor name from "new" to "MyApp"
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Optional: hides the debug banner
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
              // FIX 3: Changed width to double.infinity to prevent overflow
              _buildNoteContainer(Colors.pink),
              _buildNoteContainer(Colors.brown),
              _buildNoteContainer(Colors.green),
              _buildNoteContainer(Colors.yellow),
              _buildNoteContainer(Colors.cyan),
              _buildNoteContainer(Colors.orange),
              _buildNoteContainer(Colors.pink),
              _buildNoteContainer(Colors.pink),
              _buildNoteContainer(Colors.pink),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to keep your code clean and avoid repetition
  Widget _buildNoteContainer(Color color) {
    return Container(
      height: 150,
      width: double.infinity, // Takes up the full width of the screen
      color: color,
      child: const Center(
        child: Text(
          "UI concepts worth\nexisting", // Corrected spelling of "existing"
          style: TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  // FIX 2: Corrected constructor name from "new" to "SplashScreen"
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("assets/m1102mohammadserage.jpg")),
    );
  }
}
