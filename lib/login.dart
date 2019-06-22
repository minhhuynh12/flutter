import 'package:flutter/material.dart';
import 'staked_icon.dart';
import 'home.dart';
import 'bill.dart';
import 'cash.dart';
import 'homeList.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void _handlePressed() {
      var onYes = () {
        print("~~~ onYes");
      };

      var onNo = () {
        print("~~~ onYes");
      };

      confirmDialog3(context, onYes, onNo).then((_) {
        print("done");
      });
    }

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: 

        //minhhc

        Colors.transparent,

        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackedIcons(),
            new Row(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: new TextField(
                  decoration: new InputDecoration(labelText: 'Email')),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(labelText: 'Password')),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 8, left: 8, top: 8, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: new Container(
                        padding: const EdgeInsets.all(20.0),
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF180191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 8, left: 8, top: 8, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CashPage()));
                      },
                      child: new Container(
                        padding: const EdgeInsets.all(20.0),
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF180191),
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text(
                          "Bill",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: _handlePressed,
                //   child: Container(
                //     child: Text('asdasda'),
                //   ),
                // )
               new RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomeListPage()
                    ));
                    },
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Subtract",
                    ),
               )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: new Text(
                      "Create A new account",
                      style: new TextStyle(
                          fontSize: 20.0,
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
    );
  }
}

Future<Null> confirmDialog3(BuildContext context, void onNo(), void onYes()) {
  return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Are you sure?'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('YES'),
              onPressed: () {
                Navigator.of(context).pop();
                onYes();
              },
            ),
            new FlatButton(
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
                onNo();
              },
            ),
          ],
        );
      });
}
