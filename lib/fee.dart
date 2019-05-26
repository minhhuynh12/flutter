import 'package:flutter/material.dart';

class FeeInformation extends StatefulWidget {
  @override
  _FeeInformationState createState() => _FeeInformationState();
}

class _FeeInformationState extends State<FeeInformation> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new FeeInformationItem(
                  title:
                      'Which health insurance plans are best for chromic conditions?',
                  content:
                      'Managing a choronic condition can require more frequent checkups, medication, and supplies - and all these costs can really add up.',
                ),
                new FeeInformationItem(
                  title: 'i am new to health insurance. where do i start? ',
                  content:
                      'Managing a choronic condition can require more frequent checkups, medication, and supplies - and all these costs can really add up.',
                ),
                new FeeInformationItem(
                  title:
                      'How can i get affordable health isurance as a small business owner? ',
                  content:
                      'Managing a choronic condition can require more frequent checkups, medication, and supplies - and all these costs can really add up.',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FeeInformationItem extends StatefulWidget {
  FeeInformationItem({Key key, this.title, this.content}) : super(key: key);
  final String title;
  final String content;

  @override
  _FeeInformationItemState createState() => _FeeInformationItemState();
}

class _FeeInformationItemState extends State<FeeInformationItem> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            _isClicked = !_isClicked;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: HexColor('#DFE4EA')))),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(
                      _isClicked ? Icons.remove : Icons.add,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          color: HexColor("455A64"),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              _isClicked
                  ? Row(children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Expanded(
                          flex: 6,
                          child: Text(
                            widget.content,
                            style: TextStyle(color: HexColor("#78909C")),
                          )),
                    ])
                  : IgnorePointer(
                      ignoring: true,
                      child: Opacity(
                        opacity: 0.0,
                      ),
                    ),
            ],
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
