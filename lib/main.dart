import 'package:flutter/material.dart';

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
    final perguntas = [
      "Qual sua cor favorita?",
      "Qual seu animal favorito?",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Perguntas")),
      body: Column(
        children: [
          Text(perguntas[_perguntaSelecionada]),
          ElevatedButton(
            child: Text("Resposta 1"),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text("Resposta 2"),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text("Resposta 3"),
            onPressed: _responder,
          ),
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
