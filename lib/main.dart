import 'package:flutter/material.dart';
import 'edit_bio.dart';
import 'edit_display_name.dart';
import 'edit_email.dart';
import 'edit_phone_number.dart';

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
  String phoneNumber = '888-888-8000';
  String emailAddress = 'jdoe@aol.com';
  String bioSummary = 'Hi, I am Jane';

  void _setDisplayName(String fullName){
    setState(() {
      displayName = fullName;
    });
  }
  void _setPhoneNumber(String number){
    setState(() {
      phoneNumber = number;
    });
  }
  void _setEmail(String email){
    setState(() {
      emailAddress = email;
    });
  }
  void _setBio(String bio){
    setState(() {
      bioSummary = bio;
    });
  }

  _navEditDisplayName(BuildContext context)async {
    final fullName= await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditDisplayName()),
    );
    if (fullName != null)
    _setDisplayName(fullName);
  }

  _navEditPhoneNumber(BuildContext context)async {
    final phoneNumber= await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditPhoneNumber()),
    );
    if (phoneNumber != null)
      _setPhoneNumber(phoneNumber);
  }

  _navEditEmail(BuildContext context)async {
    final email= await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditEmail()),
    );
    if (email != null)
      _setEmail(email);
  }

  _navEditBio(BuildContext context)async {
    final bio = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditBio()),
    );
    if (bio != null)
      _setBio(bio);
  }



  GestureDetector buildDisplayNameField(){
    return GestureDetector(
        onTap: () =>{
      _navEditDisplayName(context)
    },
      child: Container(
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
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(displayName),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.grey,
              ),
            ],
        ),
      ),
    );
  }

  buildPhoneNumberField(){
    return GestureDetector(
      onTap: () =>{
        _navEditPhoneNumber(context)
      },
      child: Container(
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
                    'Phone',
                    style: TextStyle( color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: Text(phoneNumber),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
  buildEmailField(){
    return GestureDetector(
      onTap: () =>{
        _navEditEmail(context)
      },
      child: Container(
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
                    'Email',
                    style: TextStyle( color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: Text(emailAddress),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
  buildBioField(){
    return GestureDetector(
      onTap: () =>{
        _navEditBio(context)
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
          children:<Widget>[
            Expanded(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom:5.0),
                  child: Text(
                    'Bio',
                    style: TextStyle( color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: Text(
                    bioSummary,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),),
            Expanded(
              child: Container(),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
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
                      backgroundImage: AssetImage('images/profile_pic.png'),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:30.0, top: 20.0, right:30.0),
                        child: buildDisplayNameField(),
                        ),
                      Padding(padding: EdgeInsets.only(left:30.0, top: 20.0, right:30.0),
                        child: buildPhoneNumberField(),
                      ),
                      Padding(padding: EdgeInsets.only(left:30.0, top: 20.0, right:30.0),
                        child: buildEmailField(),
                      ),
                      Padding(padding: EdgeInsets.only(left:30.0, top: 20.0, right:30.0),
                        child:Expanded(
                        child:(buildBioField()),),
                      ),
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
