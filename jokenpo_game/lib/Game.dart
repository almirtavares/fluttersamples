import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  var _applicationImage = "images/jokenpo.png";
  var _yourImage = "images/jokenpo.png";
  var _result = "";
  var _fnum;

  static List<String> _imageList = [
    "images/stone.png",
    "images/paper.png",
    "images/scissor.png"
  ];

  var _index = Random().nextInt(_imageList.length);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo")
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /*Image.asset(
            "images/jokenpo.png",
          ),*/
          Padding(
            padding: EdgeInsets.only(top:32, bottom: 16),
            child: Text(
                "Flutter Opponent",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ),
          Image.asset(
              _applicationImage,
              height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top:32, bottom: 16),
            child: Text(
              "YOU",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
              _yourImage,
              height: 100,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 32, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    setState(() {
                       _fnum = Random().nextInt(_imageList.length);
                      _applicationImage = _imageList[_fnum];
                       _yourImage = "images/stone.png";
                      _result = checkResult(0, _fnum);
                    });
                  },
                  child: (
                      Image.asset(
                        "images/stone.png",
                        height: 75,
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                       _fnum = Random().nextInt(_imageList.length);
                      _applicationImage = _imageList[_fnum];
                      _yourImage = "images/paper.png";
                      _result = checkResult(1, _fnum);
                    });
                  },
                  child: (
                      Image.asset(
                        "images/paper.png",
                        height: 75,
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                       _fnum = Random().nextInt(_imageList.length);
                      _applicationImage = _imageList[_fnum];
                      _yourImage = "images/scissor.png";
                      _result = checkResult(2, _fnum);
                    });
                  },
                  child: (
                      Image.asset(
                        "images/scissor.png",
                        height: 75,
                      )
                  ),
                ),

              ],
            ),
          ),
          Text(
            _result,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent
            ),

          )
        ],
      ),
    );

  }


  String checkResult(var _ynum, var _fnum){

    var _result;

    if (_ynum == _fnum){
      _result = "DRAW!";
    }
    else if (_ynum == 0 && _fnum == 1) //Stone|Paper
        {
      _result = "YOU LOSE!";
    }
    else if (_ynum == 0 && _fnum == 2) //Stone|Scissor
        {
      _result = "YOU WON!";
    }
    else if (_ynum == 1 && _fnum == 0) //Paper|Stone
        {
      _result = "YOU WON!";
    }
    else if (_ynum == 1 && _fnum == 2) //Paper|Scissor
        {
      _result = "YOU LOSE!";
    }
    else if (_ynum == 2 && _fnum == 0) //Scissor|Stone
        {
      _result = "YOU LOSE!";
    }
    else if (_ynum == 2 && _fnum == 1) //Scissor|Paper
        {
      _result = "YOU WON!";
    }

    return _result;
  }
}
