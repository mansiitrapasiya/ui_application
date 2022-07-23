import 'package:flutter/material.dart';
import 'package:ui_application/screen/code.dart';
import 'package:ui_application/screen/homepage.dart';

import 'clothes.dart';
import 'handbag.dart';
import 'login.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  bool isShow = true;
  int currentvalue = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 48, 76, 202),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            margin: const EdgeInsets.only(top: 30, right: 50),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/mansi.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Switch(
                              hoverColor: Colors.pink,
                              focusColor: Colors.amber,
                              value: isShow,
                              onChanged: (v) {
                                setState(() {
                                  isShow = v;
                                });
                              }),
                        ],
                      ),
                      const Text(
                        "Mansi Trapasiya",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      const Text(
                        "mansitrapasiya12@gmail.com",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              !isShow
                  ? const SizedBox()
                  : Column(
                      children: [
                        ListTile(
                          onTap: () {
                            setState(() {
                              _showMyDialog();
                            });
                          },
                          leading: const Icon(Icons.person),
                          title: const Text(
                            "Log in",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.favorite),
                          title: const Text(
                            "Favorite",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.notifications_active),
                          title: const Text(
                            "Request",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: () {},
                          leading: const Icon(
                            Icons.settings,
                          ),
                          title: const Text(
                            "Settings",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: (() {}),
                          leading: const Icon(Icons.share),
                          title: const Text(
                            "Share",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          onTap: (() {}),
                          leading: const Icon(Icons.delete),
                          title: const Text(
                            "Bin",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(183, 51, 210, 216),
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                onSelected: ((v) {}),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("Setting"),
                      ),
                      const PopupMenuItem(value: 2, child: Text("Shre")),
                      const PopupMenuItem(value: 3, child: Text("feedback"))
                    ]),
          ],
          backgroundColor: const Color.fromARGB(255, 48, 76, 202),
          title: const Text(
            "Tabbar",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          bottom: TabBar(tabs: [
            Container(
              child: (const Text(
                "Code",
                style: TextStyle(fontSize: 20),
              )),
            ),
            Container(
              child: (const Text(
                "Handbage",
                style: TextStyle(fontSize: 20),
              )),
            ),
            Container(
              child: (const Text(
                "Clothes",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Code(),
          HandBag(),
          Clothes(),
        ]),
      ),
    );
  }

  _showMyDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Do you want to log in?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabbarPage()));
                },
                child: const Text("No"))
          ],
        );
      },
    );
  }
}
