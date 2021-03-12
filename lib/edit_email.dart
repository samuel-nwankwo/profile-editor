import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditEmail extends StatelessWidget {
  EditEmail({Key key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();

  buildEditEmail() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            bottom: 5.0,
          ),
          child: Theme(
            data: ThemeData(primaryColor: Colors.grey),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  labelText: "Your email address", border: InputBorder.none),
            ),
          ),
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
        automaticallyImplyLeading: true,
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What's your email?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: buildEditEmail(),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    {Navigator.pop(context, _emailController.text)},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                child: Text(
                  'Update',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
