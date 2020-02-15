import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _text = "Initial Text";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter AppBar - Title"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _text = "Changed Text";
                });
              },
              child: Text("Change Text"),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _text = "Initial Text";
                });
              },
              child: Text("Reset"),
            ),
            Text("Text: $_text")
          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("BottomNavigationBar"),
            ],
          ),
        ),
      ),
    );

  }
}
