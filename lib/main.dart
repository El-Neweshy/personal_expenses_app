import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    Transaction(id: 't3', title: 'Food', amount: 5.25, date: DateTime.now()),
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              color: Colors.blue[100],
              child: const Text(
                'Chart',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    autocorrect: true,
                    decoration: const InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),
                  TextField(
                    autocorrect: true,
                    decoration: const InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Add Transaction',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map(
              (tx) {
                return Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 3,
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '\$${tx.amount}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            tx.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
