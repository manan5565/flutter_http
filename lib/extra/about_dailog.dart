import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: "Manan Koyawala",
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I am Flutter App"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("About The App"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationName: 'Flutter App',
                applicationLegalese: 'Legalese',
                applicationVersion: 'version 1.0.0',
              ),
            );
          },
        ),
      ),
    );
  }
}
