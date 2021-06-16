import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemon.dart';
import 'package:pokedex_detalhes/screens/home/widgets/details.dart';
import 'package:pokedex_detalhes/screens/home/widgets/weaknesses.dart';

class Home extends StatelessWidget {
  final Pokemon _mewtwo = Pokemon(
    name: "Mewtwo",
    photo: "assets/images/mewtwo.png",
    description:
        "É um pokemon psíquico que pode megaevoluir para mega Mewteo X e Y.",
    type: "Lendário",
    ability: "Psíquico",
    height: 2.0,
    weight: 122.0,
    weaknesses: [
      "Fantasmas",
      "Escuro",
      "Insetos",
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _mewtwo.name,
        ),
        backgroundColor: Color(0xFF9DB0E4),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Column(
          children: [
            Image.asset(
              _mewtwo.photo,
              width: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                _charmander.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/bola_azul.png",
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/bola_vermelha.png",
                ),
              ],
            ),
            Details(_mewtwo),
            Weaknesses(_mewtwo.weaknesses),
          ],
        ),
      ),
    );
  }
}
