import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: "Manan Koyawala",
        home: HomePage(),
      ),
    );

// Login form
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      body: Center(),
    );
  }
}
