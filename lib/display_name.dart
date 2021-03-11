
import 'package:flutter/material.dart';

class DisplayName extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: EditNamePage(title: "What's your name?"),
    );
  }
}

class EditNamePage extends StatefulWidget {
  EditNamePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EditNamePageState createState() => _EditNamePageState();
}

class _EditNamePageState  extends State<EditNamePage> {
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
  buildEditName(String name){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          shape: BoxShape.rectangle,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(name,
                style: TextStyle( color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: Text('Input',
                style: TextStyle( color: Colors.black),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            buildEditName('First Name'),
                            Container(width:20,),
                            buildEditName('Last Name'),
                          ],
                        ),
                      ),
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
  }}