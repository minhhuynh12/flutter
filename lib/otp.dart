import 'dart:async';

import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  Timer _timer;
  int _start = 60;
  String time;
  FocusNode nodeDefault = FocusNode();
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              if (_start < 1) {
                timer.cancel();
              } else {
                _start = _start - 1;
              }
            }));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('OTP CODE'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Column(
                
                children: <Widget>[
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Enter your OTP code',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'We sent the code to your registered phone number',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '(+855) 23695999',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: new BoxDecoration(
                            color: HexColor('#70ADD8E6'),
                            borderRadius: new BorderRadius.circular(8.0)),
                        
                        height: 48.0,
                        width: 36.0,
                        child: TextField(
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              counterText: ""),
                          textAlign: TextAlign.center,
                          autofocus: true,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          focusNode: nodeDefault,
                          onChanged: (text) {
                            if (text.length > 0) {
                              FocusScope.of(context).requestFocus(nodeOne);
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                         decoration: new BoxDecoration(
                            color: HexColor('#70ADD8E6'),
                            borderRadius: new BorderRadius.circular(8.0)),
                        height: 48.0,
                        width: 36.0,
                        child: TextField(
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              counterText: ""),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          focusNode: nodeOne,
                          onChanged: (text) {
                            if (text.length > 0) {
                              FocusScope.of(context).requestFocus(nodeTwo);
                            } else {
                              FocusScope.of(context).requestFocus(nodeDefault);
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                          decoration: new BoxDecoration(
                            color: HexColor('#70ADD8E6'),
                            borderRadius: new BorderRadius.circular(8.0)),
                        height: 48.0,
                        width: 36.0,
                        child: TextField(
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              counterText: ""),
                          textAlign: TextAlign.center,
                          autofocus: true,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          focusNode: nodeTwo,
                          onChanged: (text) {
                            if (text.length > 0) {
                              FocusScope.of(context).requestFocus(nodeThree);
                            } else {
                              FocusScope.of(context).requestFocus(nodeOne);
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                           decoration: new BoxDecoration(
                            color: HexColor('#70ADD8E6'),
                            borderRadius: new BorderRadius.circular(8.0)),
                        height: 48.0,
                        width: 36.0,
                        child: TextField(
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              counterText: ""),
                          textAlign: TextAlign.center,
                          autofocus: true,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          focusNode: nodeThree,
                          onChanged: (text) {
                            if (text.length == 0) {
                              FocusScope.of(context).requestFocus(nodeTwo);
                            }else{
                               FocusScope.of(context).requestFocus(new FocusNode());
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Text("$_start" + ' seconds left'),
                  SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    width: double.infinity,
                    child: RaisedButton(
                        onPressed: () {},
                        color: Colors.orange,
                        textColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Submit",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                    SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Didn\'t receive the OTP?'),
                      Text(' Resend code' , style: TextStyle(color: Colors.blue),)

                    ],
                  )
                ],
              )),
        ));
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.red, //                   <--- border color
      width: 5.0,
    ),
  );
}
