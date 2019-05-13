import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    final List<int> items = [1, 2, 3, 4, 5, 6, 7, 7];

    List<Widget> itemWidgets = new List<Widget>();
    for (var i = 0; i < items.length; i++) {
      itemWidgets.add(
        Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[Text('tren' + i.toString()), Text('duoi')],
                ),
                Text('1ass')
              ],
            )),
      );
    }
    return MaterialApp(
      title: title,
      home: _listPage(
          // children: itemWidgets,

          ),
    );
  }
}

class _listPage extends StatefulWidget {
  @override
  _listPageState createState() => new _listPageState();
}

class _listPageState extends State<_listPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var spacecrafts = [
      "minhhc 1",
      "minhhc 2",
      "minhhc 3",
      "minhhc 4",
      "minhhc 5",
      "minhhc 6"
    ];
    var listItem = new ListView.builder(
      itemCount: spacecrafts.length,
      itemBuilder: (BuildContext context, int index){
        return new ListTile(
          title: new Card(
            elevation: 5.0,
            child: new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10, bottom: 10),
              child: new Text(spacecrafts[index]),
            ),
          ),
          onTap: (){
            showDialog(
              barrierDismissible: false,
              context: context,
              child: new AlertDialog(
                  title: new Column(
                    children: <Widget>[
                      new Text("Listview"),
                      new Icon(
                        Icons.favorite,
                        color: Colors.red,

                      )
                    ],
                  ),
                  content: new Text(spacecrafts[index]),
                  actions: <Widget>[
                    new FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: new Text("Ok"),
                    )
                  ],
              ),
            );
          },
        );
      });

      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Page"),
        ),
        body: listItem,
      );
  }
}
void main() => runApp(ListPage());


// void _showDialog(Context context) {
//     // flutter defined function
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         // return object of type Dialog
//         return AlertDialog(
//           title: new Text("Alert Dialog title"),
//           content: new Text("Alert Dialog body"),
//           actions: <Widget>[
//             // usually buttons at the bottom of the dialog
//             new FlatButton(
//               child: new Text("Close"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }