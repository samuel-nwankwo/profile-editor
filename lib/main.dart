import 'package:flutter/material.dart';
import 'display_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(
          backgroundColor: Colors.white,
      ),

      home: MyHomePage(title: 'Edit Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Column buildDisplayNameField(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text('Name',
              style: TextStyle( color: Colors.grey),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditDisplayName()),
              );
            },
            child: TextField(
              readOnly: true,
            ),
            // onChanged: (text) {
            //   print("First text field: $text");
            // },
            // decoration: InputDecoration(
            //     hintText: 'Update Name'
            // ),
          ),
        ]
    );
  }
  buildPhoneNumberField(){

  }
  buildEmailField(){

  }
  buildBioField(){

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
            widget.title,
            style: TextStyle(color: Colors.black)
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child:Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top:16.0, bottom:8.0
                  ),
                    child: CircleAvatar(
                      radius: 50.0,
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0
                  ),
                  child: Column(
                    children: <Widget>[
                      buildDisplayNameField(),
                      // buildPhoneNumberField(),
                      // buildEmailField(),
                      // buildBioField(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
