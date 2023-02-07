import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';
import 'package:projeto_perguntas/resultado.dart';

void main(List<String> args) => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[_perguntaSelecionada].cast()["respostas"]
        : [];

    List<Widget> listWidget =
        respostas.map((t) => Respostas(t, _responder)).toList();

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Perguntas")),
      body: temPerguntaSelecionada
          ? Column(
              children: [
                Questao(perguntas[_perguntaSelecionada]["texto"].toString()),
                ...listWidget,
              ],
            )
          : const Resultado("Parabéns")
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
