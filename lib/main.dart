import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Talent HIRE',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: true,
        title: new FlutterLogo(
          colors: Colors.green,
          size: 30.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.arrow_back),
        //   color: Colors.grey,
        //   tooltip: "Back",
        // ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.grey,
            tooltip: "Menu",
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.alarm),
      //   mini: false,
      //   onPressed: (){},
      //   tooltip: "Set Alarm",
      // ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.alarm),
        label: new Text("Set Alarm"),
        elevation: 12.0,
        tooltip: "Set Alarm",
        onPressed: (){},
        isExtended: true,
      ),
      bottomNavigationBar: BottomAppBar(
      //shape: CircularNotchedRectangle(),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {},),
          IconButton(icon: Icon(Icons.message), onPressed: () {},),
        ],
      ),
    ),

      
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.5),
                height: 100.0,
                color: Colors.white,
                child: new Text(
                  'Get Hired',
                  style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Colors.grey,
                      spreadRadius: -10.0,
                      offset: Offset(10.0, 20.0)
                    ),
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: new Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        Row(
                            children: <Widget>[
                              Container(
                              padding: EdgeInsets.fromLTRB(25.0, 40.0, 0.0, 25.0),
                              child: new Text(
                                '296',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 25.0),
                              child: new Icon(Icons.local_library,size: 20.0,color: Colors.redAccent,),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10.0),
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 20.0,
                        //     color: Colors.grey,
                        //     offset: Offset(20.0, 20.0)
                        //   )
                        // ]
                      ),
                      child: FlatButton(
                        onPressed: (){},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                          child: Center(
                          child: Text("Get More",style: TextStyle(fontWeight:FontWeight.bold, color: Colors.green),),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0,),
          new Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'My Coaches',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
                FlatButton(
                  child: new Text(
                    'View Past sessions',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                    ),
                  ),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            primary: false,
            children: <Widget>[
              _cards("Bharat", "Available", 1, 5),
              _cards("Bharat", "Away", 2, 10),
              _cards("Bharat", "Away", 3, 1),
              _cards("Bharat", "Available", 4, 8),
              _cards("Bharat", "Available", 5, 2),
              _cards("Bharat", "Available", 6, 3),
              _cards("Aharwak","Away",7,2),
            ],
          ),
        ],
      )
    );
  }

  Widget _cards(String name, String status, int cardIndex,int hours){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: new Column(
        children: <Widget>[
          SizedBox(height: 12.0,),
          Column(
            children: <Widget>[
              new Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://bharataga.000webhostapp.com/images/new.jpg',
                    )
                  )
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "$status For next ${hours.toString()} Hours",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 15.2,),
              
              //This Expanded is not working
              
              // Expanded(
              //     child: Container(
              //     decoration: BoxDecoration(
              //       color: status == 'Away' ? Colors.grey: Colors.green,
              //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
              //       //borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //     ),
              //     child: FlatButton(
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              //         child: Center(
              //           child: Text("Request",style: TextStyle(color: Colors.white,),
              //       ),
              //     ),
              //     onPressed: (){print("$cardIndex is pressed");},
              //     ),
              //   ),
              // ),

              //this will run but i want that it will be covered

              Container(
                  //height: 30.0,
                  decoration: BoxDecoration(
                    color: status == 'Away' ? Colors.grey: Colors.green,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                    //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text("Request",style: TextStyle(color: Colors.white,),
                    ),
                  ),
                  onPressed: (){print("$cardIndex is pressed");},
                  ),
                ),
            ]
          )
        ],
      ),
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}
