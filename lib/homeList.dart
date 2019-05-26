import 'package:flutter/material.dart';
import 'model/homeListItems.dart';

class HomeListPage extends StatefulWidget {
  _HomeListPage createState() => _HomeListPage();
}

class _HomeListPage extends State<HomeListPage> {
  @override
  Widget build(BuildContext context) {
    final List<HomeListItems> items = []
      ..add(HomeListItems(
          'CamShip-5201',
          'Process',
          'MinhNH',
          'N0 1112 Siheanok Phnong Penh N0 1112 Siheanok Phnong Penh N0 1112 Siheanok Phnong Penh',
          '0998755555',
          '09/02/2019',
          '10/02/2019',
          'A leather wallet',
          '120 USD'))
      ..add(HomeListItems(
          'CamShip-5202',
          'Process',
          'Minhhc',
          'N0 1112 Siheanok Phnong Penh',
          '0998768889',
          '09/02/2019',
          '10/02/2019',
          'A leather wallet',
          '120 USD'))
      ..add(HomeListItems(
          'CamShip-5202',
          'Process',
          'Minhhc',
          'N0 1112 Siheanok Phnong Penh',
          '0998768889',
          '09/02/2019',
          '10/02/2019',
          'A leather wallet',
          '120 USD'));
    List<Widget> itemWidgets = new List<Widget>();
    for (var i = 0; i < items.length; i++) {
      itemWidgets.add(Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
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
                          style:
                              new TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(items[i].id,
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            Text(items[i].status,
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
                        Text(items[i].name, style: new TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                        SizedBox(height: 8.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text('Address:', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].address),)
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
                              child: Text('Phone:', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].phone),)
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
                              child: Text('Time create:', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].timeCreate),)
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
                              child: Text('Time receive:', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].timeReceive),)
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
                              child: Text('Your package:', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].package),)
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
                              child: Text('Total', style: new TextStyle(color: Colors.grey),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(items[i].total, style: new TextStyle(color: Colors.orange , fontWeight: FontWeight.bold),),)
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
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: SingleChildScrollView(
        
        child: Container(child: Column(
          children: itemWidgets,
        ),
        )
          
        ),
      );
    
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
