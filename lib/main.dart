import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('100,00'),
                  subtitle: Text('1000,00'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('200,00'),
                  subtitle: Text('2000,00'),
                ),
              ),
            ],
          ),
          appBar: AppBar(
            title: Text('Trasferência'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => null,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
