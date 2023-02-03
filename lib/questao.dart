import 'package:flutter/cupertino.dart';

class Questao extends StatelessWidget {
  final String _texto;

  const Questao(this._texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_texto);
  }
}
