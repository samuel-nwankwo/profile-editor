import 'package:flutter/material.dart';
import 'edit_bio.dart';
import 'edit_display_name.dart';
import 'edit_email.dart';
import 'edit_phone_number.dart';
import 'edit_pic.dart';

void main() {
  runApp(ProfileEditorApp());
}

class ProfileEditorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: ProfileEditor(title: 'Edit Profile'),
    );
  }
}

class ProfileEditor extends StatefulWidget {
  ProfileEditor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileEditorState createState() => _ProfileEditorState();
}

class _ProfileEditorState extends State<ProfileEditor> {
  String displayName = 'John Doe';
  String phoneNumber = '888-888-8000';
  String emailAddress = 'jdoe@aol.com';
  String bioSummary = 'Hi, I am John';

  void _setDisplayName(String fullName) {
    setState(() {
      displayName = fullName;
    });
  }

  void _setPhoneNumber(String number) {
    setState(() {
      phoneNumber = number;
    });
  }

  void _setEmail(String email) {
    setState(() {
      emailAddress = email;
    });
  }

  void _setBio(String bio) {
    setState(() {
      bioSummary = bio;
    });
  }

  _navEditDisplayName(BuildContext context) async {
    final fullName = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditDisplayName()),
    );
    if (fullName != null) _setDisplayName(fullName);
  }

  _navEditPhoneNumber(BuildContext context) async {
    final phoneNumber = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditPhoneNumber()),
    );
    if (phoneNumber != null) _setPhoneNumber(phoneNumber);
  }

  _navEditEmail(BuildContext context) async {
    final email = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditEmail()),
    );
    if (email != null) _setEmail(email);
  }

  _navEditBio(BuildContext context) async {
    final bio = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditBio()),
    );
    if (bio != null) _setBio(bio);
  }

  GestureDetector _navEditPic() {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditPic()),
        ),
      },
      child: CircleAvatar(
        radius: 50.0,
        backgroundImage: AssetImage('images/profile_pic.png'),
      ),
    );
  }

  GestureDetector buildDisplayNameField() {
    return GestureDetector(
      onTap: () => {_navEditDisplayName(context)},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      'Name',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(displayName,
                        overflow: TextOverflow.ellipsis, maxLines: 2),
                  ),
                ],
              ),
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

  buildPhoneNumberField() {
    return GestureDetector(
      onTap: () => {_navEditPhoneNumber(context)},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      'Phone',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(phoneNumber,
                        overflow: TextOverflow.ellipsis, maxLines: 2),
                  ),
                ],
              ),
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

  buildEmailField() {
    return GestureDetector(
      onTap: () => {_navEditEmail(context)},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(emailAddress,
                        overflow: TextOverflow.ellipsis, maxLines: 2),
                  ),
                ],
              ),
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

  buildBioField() {
    return GestureDetector(
      onTap: () => {_navEditBio(context)},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      'Bio',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                    child: Text(bioSummary,
                        overflow: TextOverflow.ellipsis, maxLines: 2),
                  ),
                ],
              ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.title, style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                  child: _navEditPic(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                        child: buildDisplayNameField(),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                        child: buildPhoneNumberField(),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                        child: buildEmailField(),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                        child: Expanded(
                          child: (buildBioField()),
                        ),
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
