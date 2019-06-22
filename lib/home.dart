import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      //tetetete
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: new Container(
              child: new Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Explore",
                      style: new TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: new Container(
                        height: 120,
                        width: 120,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5),
                            color: Color(0xFFFD7384)),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.drive_eta,
                              color: Colors.white,
                            ),
                            new Text("Motor",
                                style: new TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                        child: new Container(
                            height: 120,
                            child: new Column(
                              children: <Widget>[
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: new Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 2, right: 2),
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        5),
                                                color: Colors.green),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.drive_eta,
                                                    color: Colors.white,
                                                  ),
                                                  new Text(
                                                    "minhhc",
                                                    style: new TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    new BorderRadius.all(
                                                        Radius.circular(5)),
                                                color: Colors.green),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.drive_eta,
                                                    color: Colors.white,
                                                  ),
                                                  new Text(
                                                    "minhhc",
                                                    style: new TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                                Expanded(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, left: 1),
                                  child: new Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 1, right: 2),
                                          child: new Container(
                                            alignment: Alignment.center,
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        5),
                                                color: Colors.green),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.drive_eta,
                                                    color: Colors.white,
                                                  ),
                                                  new Text(
                                                    "dddd",
                                                    style: new TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                borderRadius:
                                                    new BorderRadius.all(
                                                        Radius.circular(5)),
                                                color: Colors.green),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              child: new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  new Icon(
                                                    Icons.drive_eta,
                                                    color: Colors.white,
                                                  ),
                                                  new Text(
                                                    "minhhc",
                                                    style: new TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            )))
                  ],
                ),
                new SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text(
                        "Popular Trending",
                        style: new TextStyle(fontSize: 18),
                      ),
                    ),
                    new Expanded(
                      child: new Text(
                        "View all",
                        style: new TextStyle(fontSize: 18, color: Colors.blue),
                        textAlign: TextAlign.end,
                      ),
                    ),


                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100,
                              decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new NetworkImage('https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true'),
                            fit: BoxFit.cover

                          )
                        ),
                            )
                          ],
                        ),
                        
                      ),
                    )
                  ],
                )
              ]),
            ))
      ],
    );
  }
}
