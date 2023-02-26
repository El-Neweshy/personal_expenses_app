import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masaref',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 50, date: DateTime.now()),
    Transaction(id: 't2', title: 'Glasses', amount: 2.50, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Masaref',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amber,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              color: Colors.blue[100],
              child: const Text(
                'Chart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Card(
            elevation: 5,
            child: Text('List of TX'),
          )
        ],
      ),
    );
  }
}
