// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalletPage extends StatelessWidget {
  final double balance;

  WalletPage({required this.balance});

  @override
  Widget build(BuildContext context) {
    String formattedBalance = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(balance);

    return Scaffold(
      appBar: AppBar(
        title: Text("Dompet"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
  width: 300,
  height: 100, // Sesuaikan tinggi kontainer
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      colors: [Color.fromARGB(255, 255, 0, 0), Color.fromARGB(255, 220, 83, 83)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Saldo Anda",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      Text(
        formattedBalance,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }
}
