import 'package:flutter/cupertino.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;
  final bool temPerguntaSelecionada;

  const Questionario(this.perguntas, this.perguntaSelecionada, this.responder,
      this.temPerguntaSelecionada,
      {super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...respostas.map((resp) {
          return Resposta(resp['texto'] as String,
              () => responder(int.parse(resp["pontuacao"].toString())));
        }).toList(),
      ],
    );
  }
}
