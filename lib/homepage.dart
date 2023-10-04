import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String namesave = '';

  String numbersave = '';

  TextEditingController name = TextEditingController();

  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text feild'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: name,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'phone'),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                namesave = name.text;
              });
            },
            child: Text('save')),
        Text('Hi $namesave')
      ]),
    );
  }
}
