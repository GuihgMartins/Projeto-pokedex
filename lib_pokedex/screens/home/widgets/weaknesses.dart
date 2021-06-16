import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemon.dart';
import 'package:pokedex_detalhes/screens/home/widgets/pill.dart';

class Weaknesses extends StatelessWidget {
  final List<String> _weaknesses;

  Weaknesses(this._weaknesses);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              "Fraquezas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Pill(
                color: Color(0xFF838DA8),
                text: "Fantasmas",
              ),
              Pill(
                color: Color(0xFF070706),
                text: "Escuro",
              ),
              Pill(
                color: Color(0xFF56B83E),
                text: "Insetos",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
