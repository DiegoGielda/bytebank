import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
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
