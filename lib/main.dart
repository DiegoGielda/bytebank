import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class Listatrasferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          ItemTransferencias(Trasnferencia(100, 1000)),
          ItemTransferencias(Trasnferencia(200, 2000)),
          ItemTransferencias(Trasnferencia(300, 3000)),
          ItemTransferencias(Trasnferencia(400, 4000)),
        ],
      ),
      appBar: AppBar(
        title: Text('Trasferência'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        child: Icon(Icons.add),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                labelText: 'Número conta',
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Confirmar'),
          ),
        ],
      ),
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
