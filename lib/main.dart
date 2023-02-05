import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

void main(List<String> args) => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual sua cor favorita?",
        "respostas": [
          "Preto",
          "Vermelho",
          "Verde",
          "Branco",
        ]
      },
      {
        "texto": "Qual seu animal favorito?",
        "respostas": [
          "Coelho",
          "Cobra",
          "Elefante",
          "Leão",
        ]
      },
      {
        "texto": "Qual seu instrutor favorito?",
        "respostas": [
          "Maria",
          "João",
          "Léo",
          "Pedro",
        ]
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Perguntas")),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]["texto"].toString()),
          Respostas("Resposta 1", _responder),
          Respostas("Resposta 2", _responder),
          Respostas("Resposta 3", _responder),
        ],
      ),
    ));
  }
}

@override
class PerguntaAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}
