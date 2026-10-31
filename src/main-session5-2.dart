import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Feature product -> see all
            //products
            //Recommended
            //products
            //Best seller -> see all
            //products
          ],
        ),
      ),
    );
  }
}
