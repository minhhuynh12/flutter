import 'package:flutter/material.dart';
import 'base.dart';

class AddAddressPage extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  bool monVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add address'),
        ),
        body: Container(
          color: HexColor('#E3E9E5'),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 32.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: HexColor('#DFE4EA')))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Shop name'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: HexColor('#DFE4EA')))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Phone number'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: HexColor('#DFE4EA')))),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Address'),
                                      ),
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 30.0,
                                    )
                                  ],
                                )),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: monVal,
                                onChanged: (bool value) {
                                  setState(() {
                                    monVal = value;
                                  });
                                },
                              ),
                              Text("Make this address as default address"),
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 8.0,
                ),
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          'test',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )),
                )
              ],
            ),
          ),
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
