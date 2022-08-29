import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: "Manan Koyawala",
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

void main() => runApp(
      //this means the main function says runApp() method in one line.
      const MaterialApp(
        title: "Manan Koyawala",
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String? name; this indicates thr name feild is non nullable.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
