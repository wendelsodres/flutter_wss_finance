import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text('Nenhuma transação Cadastrada!'),
                Icon(
                  Icons.attach_money,
                  size: 30,
                ),
              ],
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final tr = transactions[index];
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),

                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal[400],
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          child: Text('R\$${tr.value}'),
                        ),
                      ),
                    ),
                    title: Text(
                      tr.title,
                      style: TextStyle(fontSize: 16)

                    ),
                    subtitle: Text(
                      DateFormat('d MMM y').format(tr.date),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
