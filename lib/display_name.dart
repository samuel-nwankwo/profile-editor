
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayName extends StatefulWidget{
  DisplayName({Key key}) : super(key: key);

  @override
  _EditNamePageState createState() => _EditNamePageState();

}

class _EditNamePageState  extends State<DisplayName> {
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
              Align(
                alignment: Alignment.topLeft,
                child:Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight:FontWeight.bold ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child:Padding(
                  padding: EdgeInsets.only(left:10.0, bottom: 5.0,),
                  child: Text('Input',
                    style: TextStyle( color: Colors.black),
                  ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading:true,
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:EdgeInsets.only(left: 30.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child:Text("What's your name?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0 ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: <Widget>[
                buildEditName('First Name'),
                Container(width:20),
                buildEditName('Last Name'),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding:EdgeInsets.all(30.0),
            child:
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:Colors.black,
                  onPrimary:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                onPressed: _incrementCounter,
                child: Text('Update',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }}