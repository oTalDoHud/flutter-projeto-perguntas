import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main(List<String> args) => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> perguntas = const [
    {
      "texto": "Qual sua cor favorita?",
      "respostas": [
        {"texto": "Preto", "pontuacao": 10},
        {"texto": "Vermelho", "pontuacao": 5},
        {"texto": "Verde", "pontuacao": 3},
        {"texto": "Branco", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", "pontuacao": 10},
        {"texto": "Cobra", "pontuacao": 5},
        {"texto": "Elefante", "pontuacao": 3},
        {"texto": "Leão", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual seu instrutor favorito?",
      "respostas": [
        {"texto": "Maria", "pontuacao": 10},
        {"texto": "João", "pontuacao": 5},
        {"texto": "Léo", "pontuacao": 3},
        {"texto": "Pedro", "pontuacao": 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Perguntas")),
            body: temPerguntaSelecionada
                ? Questionario(perguntas, _perguntaSelecionada, _responder,
                    temPerguntaSelecionada)
                : Resultado(_pontuacaoTotal, _reiniciarQuestionario)));
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
