import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.blue,
          title: Text(
            "Hello World",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    ),
  );
}

// whatsapp -> android -> MaterialUI
// whatsapp -> iOS -> CupertinoUI
