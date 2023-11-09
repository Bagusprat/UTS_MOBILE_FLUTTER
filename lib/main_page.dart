import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/TopUpPage.dart';
import 'package:flutter_pem_mobile/profil.dart';
import 'package:flutter_pem_mobile/Calculator_page.dart';
import 'package:flutter_pem_mobile/Todo_page.dart';
import 'package:flutter_pem_mobile/WalletPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Goody App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double walletBalance = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Warna latar belakang tombol
            ),
            child: const Text('Profile'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profil_page()),
              );
            },
          ),
  
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Calculator'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculator_page()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Todo List'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Todo_page()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('TopUp'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TopUpPage();
              })).then((addedBalance) {
                if (addedBalance != null) {
                  setState(() {
                    walletBalance += addedBalance;
                  });
                }
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Dompet'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WalletPage(balance: walletBalance)),
              );
            },
          ),
        ],
      ),
    );
  }
}
