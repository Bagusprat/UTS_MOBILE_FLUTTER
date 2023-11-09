// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/Calculator_page.dart';
import 'package:flutter_pem_mobile/Todo_page.dart';
import 'package:flutter_pem_mobile/main_page.dart';
import 'package:flutter_pem_mobile/profil.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 159, 125, 125),
            backgroundColor: const Color.fromARGB(255, 29, 28, 28),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: const Color.fromARGB(255, 128, 106, 106),
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.task,
                  )),
              
                  BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.calculate,
                  )),
                  BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home,
                  )),
                
                  BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.person,
                  )), 
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        body: <Widget>[
           Container(
            child: Todo_page(),
            
          ),
           Container(
            child: Calculator_page(),
          ),
          Container(
            child: MainPage(),
          ),
          
           Container(
            child: profil_page(),
          ),
        ][currentIndex]);
}
}