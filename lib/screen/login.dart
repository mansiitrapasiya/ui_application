import 'package:flutter/material.dart';
import 'package:ui_application/screen/tabbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  
  void _dilogbox() {
    AlertDialog(
      title: const Text("Do you want to log out?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Yes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("No",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))
      ],
    );
  }

  final _loginFormKey = GlobalKey<FormState>();
  bool isChecked = true;
  bool _isHide = true;
  Gender? myGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Login page",
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
                    height: 160,
                    width: 220,
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
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        child: RadioListTile(
                            title: const Text(
                              "Male",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            value: Gender.male,
                            groupValue: myGender,
                            onChanged: (Gender? v) {
                              setState(() {
                                myGender = v;
                              });
                            }),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: RadioListTile(
                          title: const Text(
                            "female",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          value: Gender.female,
                          groupValue: myGender,
                          onChanged: (Gender? v) {
                            setState(() {
                              myGender = v;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                          "Login",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "already have an account?  ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

enum Gender {
  male,
  female,
}
