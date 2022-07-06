import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //1
import 'dart:convert'; //8
// import 'package:snapshot/snapshot.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Manan Koyawala",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = Uri.parse('https://reqres.in/api/users'); //2
  // ignore: prefer_typing_uninitialized_variables
  var data; //3

  @override
  void initState() {
    super.initState();
    getData(); //5
  }

  getData() async {
    //6
    var res = await http.get(url, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    });
    // print(res.body); 7
    data = jsonDecode(res.body); //9
    // print(res.statusCode.toString());
    // print(res.body.toString());
    // print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      // body: data != null
      //     ? Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: ListView.builder(
      //           itemBuilder: (context, index) {
      //             return ListTile(
      //               title: Text(data[index]["email"]),
      //             );
      //           },
      //           itemCount: data == null ? 0 : data.length,
      //         ),
      //       )
      //     : const Center(child: CircularProgressIndicator()),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
