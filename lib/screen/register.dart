import 'package:flutter/material.dart';
import 'package:ui_application/screen/tabbar.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {
  final _loginFormKey = GlobalKey<FormState>();
  bool _isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Sign up",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.more_vert),
            )
          ],
          backgroundColor: const Color.fromARGB(255, 48, 76, 202),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 230,
                    child: const Image(image: AssetImage("assets/login.png")),
                  ),
                  TextFormField(
                    initialValue: "Mansi Trapasiya",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter username';
                      }
                      return null;
                    },
                    toolbarOptions:
                        const ToolbarOptions(copy: true, paste: true),
                    decoration: InputDecoration(
                        label: const Text("Username"),
                        prefixIcon: const Icon(Icons.person),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'User Name',
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    initialValue: "mansitrapasiya12@gmail.com",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter Email';
                      }
                      if (!value.isValidEmail()) {
                        return "please enter valid email";
                      }
                      return null;
                    },
                    toolbarOptions:
                        const ToolbarOptions(copy: true, paste: true),
                    decoration: InputDecoration(
                        label: const Text("E-mail"),
                        prefixIcon: IconButton(
                            onPressed: (() {}), icon: const Icon(Icons.email)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    initialValue: "1234",
                    keyboardType: const TextInputType.numberWithOptions(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid Password';
                      }
                      return null;
                    },
                    toolbarOptions:
                        const ToolbarOptions(copy: true, paste: true),
                    decoration: InputDecoration(
                        label: const Text("Password"),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(_isHide
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isHide = !_isHide;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      if (_loginFormKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const TabbarPage();
                          },
                        ));
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 48, 76, 202),
                      ),
                      height: 50,
                      width: 250,
                      child: const Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}
