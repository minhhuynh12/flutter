import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/listItem.dart';

class RequestApiPage extends StatefulWidget {
  @override
  _RequestApiPageState createState() => _RequestApiPageState();
}

class _RequestApiPageState extends State<RequestApiPage> {
  static final String host = 'http://camships.com:3000';
  static final String endPoint = '/api/Members/login?include=user';
  List data;
  List<ListItems> list;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});


    setState(() {
      data = jsonDecode(response.body);
    });
    print(data);

    // var uri = host + endPoint;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data != null && data.isNotEmpty ? ListView.builder(
        
        itemCount: data.length,
        itemBuilder: (context, position) {
          print(data[position]);
          return GestureDetector(
            onTap: () => Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text(position.toString()))),
            child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Order ID',
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 12.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(data[position]['title'],
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                              Text(data[position]['title'],
                                  style: new TextStyle(
                                    color: Colors.green,
                                    fontSize: 12.0,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          MySeparator(),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            data[position]['title'],
                            style: new TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Address:',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(data[position]['body']),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Phone:',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(data[position]['body']),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Time create:',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(data[position]['body']),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Time receive:',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(data[position]['body']),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Your package:',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(data[position]['body']),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Total',
                                  style: new TextStyle(color: Colors.grey),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  data[position]['body'],
                                  style: new TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
            
          );
        },
      ) : CircularProgressIndicator(),
    );

    // return Scaffold(
    //   body: Center(
    //     child: RaisedButton(
    //       onPressed: getData,
    //     ),
    //   ),
    // );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
