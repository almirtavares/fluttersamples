import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: HomeStateful(),
      debugShowCheckedModeBanner: false
  ));
}


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  static List<String> _phraseList = [
    "Na vida, não existe nada a temer, mas a entender.\n(Marie Curie)",
    "O que sabemos é uma gota; o que ignoramos é um oceano.\n(Isaac Newton)",
    "Viver é enfrentar um problema atrás do outro. O modo como você o encara é que faz a diferença.\n(Benjamin Franklin)",
    "Há verdadeiramente duas coisas diferentes: saber e crer que se sabe. A ciência consiste em saber; em crer que se sabe reside a ignorância.\n(Hipócrates)",
    "Faça as coisas o mais simples que você puder, porém não se restrinja às mais simples.\n(Albert Einstein)",
    "Pouco conhecimento faz com que as pessoas se sintam orgulhosas. Muito conhecimento, com que se sintam humildes.\n(Leonardo da Vinci)",
    "Um trabalho te dá um propósito e um significado. A vida é vazia sem ambos.\n(Stephen Hawking)",
    "Você não pode ensinar nada a ninguém, mas pode ajudar a pessoas a descobrirem por si mesmas.\n(Galileu Galilei)",
    "Aquele que ousa perder uma hora de seu tempo não sabe o valor da vida.\n(Charles Darwin)",
    "Em algum lugar, alguma coisa incrível está esperando para ser descoberta.\n(Carl Sagan)",
    "Ninguém que é curioso é idiota. As pessoas que não fazem perguntas permanecem ignorantes para o resto de suas vidas.\n(Neil DeGrasse Tyson)",
    "Quem não quer ser aconselhado, não pode ser ajudado.\n(Benjamin Franklin)",
    "Construímos muros demais e pontes de menos.\n(Isaac Newton)",
    "Cada sonho que você deixa para trás, é um pedaço do seu futuro que deixa de existir.\n(Steve Jobs)",
  ];

  var _number = new Random().nextInt(_phraseList.length);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text ("Flutter - Frases do Dia"),
        backgroundColor: Colors.lightBlue,
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image:
              new DecorationImage(
                image: new AssetImage("images/laptop_coffee.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: Colors.lightBlue
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  color: Colors.lightBlue,
                ),
                Text(
                  _phraseList[_number],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: (){
                    setState(() {
                      _number = Random().nextInt(_phraseList.length);
                    });
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );

  } //Build
}
