import 'package:flutter/material.dart';

class BillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        iconTheme: new IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        color: Color(0xFF9933),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
          child: new Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.all(20),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(8.0)),
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                
                                new Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      color: Color(0x50FF9933),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ImageAsset(),
                                  ),
                                ),
                                Text(
                                  "Cash dilivered",
                                  style: new TextStyle(
                                      fontSize: 16.0, color: Colors.orange),
                                ),
                                new Container(
                                
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "100",
                                        style: new TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          " USD",
                                          style: new TextStyle(
                                              fontSize: 11.0,
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            padding: const EdgeInsets.all(20),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(8.0)),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                            color: Color(0x5000C9E8),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: ImageHolding(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "CamShip is Holding",
                                        style: new TextStyle(
                                            fontSize: 16.0, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "100",
                                        style: new TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          " USD",
                                          style: new TextStyle(
                                              fontSize: 11.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              new Container(
                width: double.infinity,
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.orange, width: 2.0)),
                child: new Text(
                  "My Awesome Border",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        child: Image.asset('icons/income.png',
            height: 50.0, width: 50.0, fit: BoxFit.cover));
  }
}

class ImageHolding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        child: Image.asset('icons/coin.png',
            height: 50.0, width: 50.0, fit: BoxFit.cover));
  }
}
