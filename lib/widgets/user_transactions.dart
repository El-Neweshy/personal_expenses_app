import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 50, date: DateTime.now()),
    Transaction(id: 't2', title: 'Glasses', amount: 2.25, date: DateTime.now()),
    Transaction(id: 't3', title: 'Food', amount: 5.25, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(),
      TransactionList(_transactions),
    ]);
  }
}
