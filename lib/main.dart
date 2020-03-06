import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

void main() => runApp(WssFinance());

class WssFinance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.redAccent, hintColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wss Finance'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('Graphic'),
                  elevation: 5,
                ),
              ),
              TransactionUser(),
            ],
          ),
        ));
  }
}
