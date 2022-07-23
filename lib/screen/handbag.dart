import 'package:flutter/material.dart';

class HandBag extends StatefulWidget {
  const HandBag({Key? key}) : super(key: key);

  @override
  State<HandBag> createState() => _HandBagState();
}

class _HandBagState extends State<HandBag> {
  final List<String> _images = [
    "assets/1bag.png",
    "assets/2.png",
    "assets/3.png",
    "assets/1bag.png",
    "assets/2.png",
    "assets/3.png",
    "assets/1bag.png",
    "assets/2.png",
    "assets/3.png",
  ];
  final List<String> _text = [
    "Pink Bag",
    "Black Bag",
    "Yellow Bag",
    "Pink Bag",
    "Black Bag",
    "Yellow Bag",
    "Pink Bag",
    "Black Bag",
    "Yellow Bag",
  ];
  final List<String> _prize = [
    "2140 ₹",
    "1500 ₹",
    "3990 ₹",
    "1700 ₹",
    "1980 ₹",
    "2900 ₹",
    "3100 ₹",
    "2240 ₹",
    "1985 ₹",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: _images.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xC7F3DDF2),
                  ),
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 71, 89, 92),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(_images[index]),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        _text[index],
                        style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 71, 89, 92),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        margin: const EdgeInsets.only(right: 10),
                        height: 40,
                        
                        width: 60,
                        child: Center(
                            child: Text(
                          _prize[index],
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
