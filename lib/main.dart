import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Listatrasferencias(),
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

class Listatrasferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ItemTransferencias(Trasnferencia(100, 1000)),
        ItemTransferencias(Trasnferencia(200, 2000)),
        ItemTransferencias(Trasnferencia(300, 3000)),
        ItemTransferencias(Trasnferencia(400, 4000)),
      ],
    );
  }
}

class ItemTransferencias extends StatelessWidget {
  final Trasnferencia _trasnferencia;

  ItemTransferencias(this._trasnferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_trasnferencia.valor.toString()),
        subtitle: Text(_trasnferencia.numeroDaConta.toString()),
      ),
    );
  }
}

class Trasnferencia {
  final double valor;
  final int numeroDaConta;

  Trasnferencia(this.valor, this.numeroDaConta);
}
