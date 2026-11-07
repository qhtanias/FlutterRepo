import 'package:material_ui/material_ui.dart';

void main() {
  runApp(MaterialApp(home: CounterPage()));
}

class CounterPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("$number"),

            //button
            GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
              },
              child: Container(
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text("INCREMENT")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
