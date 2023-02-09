import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacaoTotal;
  void Function() reiniciarQuestionario;

  Resultado(this._pontuacaoTotal, this.reiniciarQuestionario, {Key? key})
      : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        Center(
          child: Text(
            "Nota: $_pontuacaoTotal",
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: reiniciarQuestionario,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              primary: Colors.white,
            ),
            child: const Text(
              "Reiniciar teste",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
