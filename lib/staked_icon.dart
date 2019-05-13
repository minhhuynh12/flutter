import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(alignment: Alignment.center, children: <Widget>[
              new Container(
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.green),
                child: new Icon(
                  Icons.local_offer,
                  color: Colors.white,
                ),
              ),
              new Container(
                margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.red),
                child: new Icon(
                  Icons.local_offer,
                  color: Colors.white,
                ),
              ),
              new Container(
                margin: new EdgeInsets.only(left: 50.0, top: 50.0),
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.yellow),
                child: new Icon(
                  Icons.local_cafe,
                  color: Colors.white,
                ),
              )
            ]);
  }
  
}

