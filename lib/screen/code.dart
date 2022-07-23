import 'package:flutter/material.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  bool isChecked = true;
  List<Map<String, dynamic>> tasks = [
    {
      'isChecked': false,
      'title': "Buy bread",
    },
    {
      'isChecked': false,
      'title': "Buy paneer",
    },
    {
      'isChecked': false,
      'title': "Buy cheez",
    },
    {
      'isChecked': false,
      'title': "Buy olive",
    },
    {
      'isChecked': false,
      'title': "Buy butter",
    },
    {
      'isChecked': false,
      'title': "Buy milk",
    },
    {
      'isChecked': false,
      'title': "Buy spred cheez",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => CheckboxListTile(
                title: Text(
                  "${tasks[index]['title']}",
                  style: const TextStyle(fontSize: 20),
                ),
                value: tasks[index]['isChecked'],
                onChanged: (bool? val) {
                  setState(() {
                    tasks[index]['isChecked'] = val;
                  });
                },
              ),
            )),
          ),
        ],
      ),
    );
  }
}
