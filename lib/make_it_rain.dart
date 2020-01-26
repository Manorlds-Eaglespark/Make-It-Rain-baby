import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain>{

  int _moneyCounter = 0;
  make_money(){
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text("Get Rich!",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29.9,
                fontStyle: FontStyle.normal,
                color: Colors.grey,
              )),
            ),

            new Expanded(
              child: new Center(
              child: new Text('\$$_moneyCounter',
                style: new TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 49.9,
                  color: getColor(_moneyCounter)
          )
          ),
        ),
            ),

            new Expanded(
              child: new Center(
                child: new FlatButton(
                  color: Colors.greenAccent,
                  onPressed: ()=>make_money(),
                  child: new Text("Let it Rain",
                  style: new TextStyle(
                    fontSize: 19.9
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColor(int amount){
    if (amount < 10000){
      return Colors.greenAccent;
    }
    else
    return Colors.green;
  }
  
}