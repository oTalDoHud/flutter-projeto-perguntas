import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() _onSelect;

  const Resposta(this._texto, this._onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: _onSelect,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        child: Text(
          _texto,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
