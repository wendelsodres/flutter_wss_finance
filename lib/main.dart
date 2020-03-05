import 'package:flutter/material.dart';
import './models/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(WssFinance());

class WssFinance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New computer',
      value: 2000.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Bicycle',
      value: 1000.00,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wss Finance'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Graphic'),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.redAccent,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text('R\$ ${tr.value.toStringAsFixed(2)}'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tr.title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF333333)),
                        ),
                        Text(
                          DateFormat('d/MM/y').format(tr.date),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                      ],
                    )
                  ],
                ));
              }).toList(),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Titulo',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Valor (R\$)',
                      ),
                    ),
                    FlatButton(
                      child: Text('New transaction'),
                      textColor: Colors.redAccent,
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
