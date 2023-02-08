import 'package:flutter/cupertino.dart';

class Resultado extends StatelessWidget {
  final int _pontuacaoTotal;

  const Resultado(this._pontuacaoTotal, {Key? key}) : super(key: key);

  String get fraseResultado {
    if (_pontuacaoTotal < 8) {
      return "Parabéns!";
    } else if (_pontuacaoTotal < 12) {
      return "Você é bom!";
    } else if (_pontuacaoTotal < 16) {
      return "Impressionante!";
    } else {
      return "nível Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$fraseResultado \nNota: $_pontuacaoTotal",
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
