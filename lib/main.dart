import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'more.dart';
import 'list_page.dart';
import 'fee.dart';
import 'add_address.dart';
import 'request_api.dart';
import 'otp.dart';
import 'test_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(alignment: Alignment.center, children: <Widget>[
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
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                  child: new Text(
                    "Quick Bee",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              // builder: (context) => LoginPage(),
                              builder: (context) => RequestApiPage()
                            ));
                      },
                      child: new Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF180191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Sign in with email",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddAddressPage(),
                            ));
                      },
                      child: new Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF180191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Fee",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestLoginPage(),
                            ));
                      },
                    child: new Container(
                      padding: const EdgeInsets.all(20.0),
                      height: 70.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF180191),
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text(
                        "minhhc",
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
