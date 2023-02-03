import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  final String _texto;

  const Questao(this._texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: Text(
        _texto,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
