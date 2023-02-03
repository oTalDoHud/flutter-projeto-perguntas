import 'package:flutter/material.dart';

void main(List<String> args) => runApp(PerguntaAPP());

class PerguntaAppState extends State<PerguntaAPP> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            child: Text("Resposta 1"),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text("Resposta 2"),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text("Resposta 3"),
            onPressed: responder,
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
    return PerguntaAppState();
  }
}
