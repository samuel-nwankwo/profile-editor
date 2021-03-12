import 'package:flutter/material.dart';
import 'display_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(
          backgroundColor: Colors.white,
      ),
      home: MyHomePage(
          title: 'Edit Profile'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  String displayName = 'Jane Doe';

  _navEditDisplayName(BuildContext context)async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditDisplayName()),
    );
    if (result != null)
    _setDisplayName(result);
  }

  void _setDisplayName(String result){
    setState(() {
    displayName = result;
  });
  }


  Container buildDisplayNameField(){
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
            children:<Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom:5.0),
                    child: Text(
                      'Name',
                      style: TextStyle( color: Colors.grey),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _navEditDisplayName(context);
                      },
                    child: Text(displayName),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.grey,
              ),
            ],
        ),
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
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(30.0),
                        child: GestureDetector(
                          onTap: () =>{
                            _navEditDisplayName(context)
                            },
                          child: buildDisplayNameField(),
                        ),
                      ),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
