import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 45.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Developed By: Kamran Hanif', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Email: KamranHanif27@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Contact Number: +93797703506', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Version: 1.0.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            ),
          ],
        ),
      ),
    );
  }
}
