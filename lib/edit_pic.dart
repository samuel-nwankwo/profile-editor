
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditPic extends StatelessWidget{
  EditPic({Key key}) : super(key: key);

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
              child:Text("Upload a photo of yourself:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0 ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child:Image(
                image: AssetImage('images/profile_pic_edit.png')
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
                onPressed: () =>{
                  Navigator.pop(context,false)
                },
                style: ElevatedButton.styleFrom(
                  primary:Colors.black,
                  onPrimary:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
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