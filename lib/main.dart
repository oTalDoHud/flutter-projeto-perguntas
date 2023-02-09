import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main(List<String> args) => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  var _titulo = 'Pergunta 01';

  final List<Map<String, Object>> perguntas = const [
    {
      "texto": "Qual o maior animal?",
      "respostas": [
        {"texto": "Argentinosaurus", "pontuacao": 0},
        {"texto": "Elefante", "pontuacao": 0},
        {"texto": "Baleia-azul", "pontuacao": 1},
        {"texto": "Patagotitan", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual o planeta mais próximo do nosso sol?",
      "respostas": [
        {"texto": "Vênus", "pontuacao": 0},
        {"texto": "Marte", "pontuacao": 0},
        {"texto": "Mercúrio", "pontuacao": 1},
        {"texto": "Júpiter", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual país inventou a pólvora?",
      "respostas": [
        {"texto": "Holanda", "pontuacao": 0},
        {"texto": "Inglaterra", "pontuacao": 0},
        {"texto": "China", "pontuacao": 1},
        {"texto": "India", "pontuacao": 0},
      ],
    },
    {
      "texto": "De quem é a famosa frase “Penso, logo existo”?",
      "respostas": [
        {"texto": "Platão", "pontuacao": 0},
        {"texto": "Descartes", "pontuacao": 1},
        {"texto": "Galileu Galilei", "pontuacao": 0},
        {"texto": "Sócrates", "pontuacao": 0},
      ],
    },
    {
      "texto":
          "Qual o nome do presidente do Brasil que ficou conhecido como Jango?",
      "respostas": [
        {"texto": "Jânio Quadros", "pontuacao": 0},
        {"texto": "Jacinto Anjos", "pontuacao": 0},
        {"texto": "Getúlio Vargas", "pontuacao": 0},
        {"texto": "João Goulart", "pontuacao": 1},
      ],
    },
    {
      "texto": "Quais o menor e o maior país do mundo?",
      "respostas": [
        {"texto": "Vaticano e Rússia", "pontuacao": 1},
        {"texto": "Nauru e China", "pontuacao": 0},
        {"texto": "Malta e Estados Unidos", "pontuacao": 0},
        {"texto": "São Marino e Índia", "pontuacao": 0},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
        if (temPerguntaSelecionada){
          _titulo = "Pergunta  0${_perguntaSelecionada + 1}";
        }else{
          _titulo= "Resultado";
        }
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
      _titulo = "Pergunta  0${_perguntaSelecionada + 1}";
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(_titulo)),
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
