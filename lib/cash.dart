import 'package:flutter/material.dart';


class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'My Flutter App',
     home : CashPage(),
   );
 }
}

class CashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CashPage();
  }

}


class PlaceholderWidget extends StatelessWidget {
 final Color color;

 PlaceholderWidget(this.color);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
 }
}


class _CashPage extends State<CashPage> {
int _currentIndex = 0;


void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          iconTheme: new IconThemeData(color: Colors.white),
          // new Text("Cash")
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[

              Expanded(
                flex: 8,
                child: new Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.all(20),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(8.0)),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                      
                                      child: Row(
                                        children: <Widget>[
                                          new Container(
                                            decoration: BoxDecoration(
                                                color: Color(0x50FF9933),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: ImageAsset(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Cash dilivered",
                                              style: new TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.orange),
                                            ),
                                          ),
                                        ],
                                      )),

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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      new Container(
                        padding: const EdgeInsets.all(20),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(8.0)),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                      
                                      child: Row(
                                        children: <Widget>[
                                          new Container(
                                            decoration: BoxDecoration(
                                                color: Color(0x5000C9E8),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: ImageHolding(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "CamShip is holding",
                                              style: new TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      )),

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
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: new Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: new BoxDecoration(
                        border: new Border.all(color: Colors.orange)),
                    child: Center(
                      child: new Text("Bill history", textAlign: TextAlign.center, 
                      style: TextStyle(color: Colors.orange, fontSize: 16.0 , fontWeight: FontWeight.bold) ,),
                    ),
                  ))
            ],
          ),
        
      ),
    //   bottomNavigationBar: bmnav.BottomNav(
		// 	labelStyle: bmnav.LabelStyle(showOnSelect: true),
		// 	items: [
		// 		bmnav.BottomNavItem(Icons.home, label: 'Home'),
		// 		bmnav.BottomNavItem(Icons.fitness_center, label: 'Workouts'),
		// 		bmnav.BottomNavItem(Icons.person, label: 'Account'),
		// 		bmnav.BottomNavItem(Icons.view_headline, label: 'Settings')
		// 	],
		// ), 
       );
    }
    
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        child: Image.asset('icons/income.png',
            height: 30.0, width: 30.0, fit: BoxFit.cover));
  }
}

class ImageHolding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        child: Image.asset('icons/coin.png',
            height: 30.0, width: 30.0, fit: BoxFit.cover));
  }
}





