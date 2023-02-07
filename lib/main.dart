import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
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


    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Perguntas")),
            body: temPerguntaSelecionada
                ? Questionario(perguntas, _perguntaSelecionada, _responder, temPerguntaSelecionada)
                : const Resultado("Parabéns")));
  }
}

@override
class PerguntaAPP extends StatefulWidget {
  const PerguntaAPP({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}
