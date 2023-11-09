// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/main_page.dart';
import 'package:flutter_pem_mobile/register_page.dart';
import 'package:flutter_pem_mobile/NavigationPage.dart';


class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LOGIN PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Colors.red
               ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'WELCOME',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

           SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                        onSurface: Colors.white,
                        side: BorderSide(
                          color: Colors.red,)),
                child: Text("Back"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
              ),
              SizedBox(width: 50),
              ElevatedButton(
                child: Container(
                  child: Text("Confirm"),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                        onSurface: Colors.white,
                        side: BorderSide(
                          color: Colors.red,)),
                onPressed: () {
                  if (nameController.text == "Admin" && passwordController.text == "1234") {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return NavigationPage();
                    }));
                  } else {
                    nameController.text = "";
                    passwordController.text = "";
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Login Failed"),
                          content: Text("Username or password is incorrect."),
                          actions: <Widget>[
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
                SizedBox(
                  // set a smaller height
                  width: 100,
                  child: Padding(
                 padding: const EdgeInsets.fromLTRB(100, 30, 180, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onSurface: Colors.white,
                        side: BorderSide(
                          color: Colors.red,
                        )
                        ),
                    child: Container(
                      
                      
                      child: Text ("Register !"),
                    ),
                       onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return register_page();
                      }));
                    },),
                              ),
                )

          ],
        ));
  }
}
