import 'package:flutter/material.dart';

class Clothes extends StatelessWidget {
  const Clothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 10,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Image.network(
                      "https://img.faballey.com/images/product/DRS03133B/1.jpg",
                      height: 150,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 155, left: 100),
                      height: 30,
                      width: 90,
                      child: Stack(
                        children: [
                          RaisedButton(
                            onPressed: () {
                              debugPrint("Buy");
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80)),
                            padding: EdgeInsets.all(0),
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 134, 82, 255)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
