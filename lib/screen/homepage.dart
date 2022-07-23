import 'package:flutter/material.dart';
import 'package:ui_application/screen/login.dart';

import 'package:ui_application/screen/register.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Welcome ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "You can get a login name by clicking on Log in at the upper right.",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Container(
                height: 250,
                width: 250,
                child: const Image(image: AssetImage("assets/login.png")),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 48, 76, 202),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignupPage();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 48, 76, 202),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
