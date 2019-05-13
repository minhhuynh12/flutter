import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text("minhhc"),
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: new Column(children: <Widget>[
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
                child: new Icon(
                  Icons.local_offer,
                  size: 80,
                ),
              ),
              new Column(
                children: <Widget>[
                  new Text(
                    "minhhc1",
                    style: TextStyle(fontSize: 18),
                  ),
                  new Text(
                    "minhhc2",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Icon(
                      Icons.local_offer,
                      size: 80,
                    ),
                  ]),
            ],
          ),
        ]),
      ),
    );
  }
}
