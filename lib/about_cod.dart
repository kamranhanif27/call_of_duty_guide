import 'package:flutter/material.dart';

class AboutCod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About COD: Mobile'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        width: double.infinity,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Text('Overview', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('First up, here\'s an overview of what to expect from Call of Duty: Mobile:', style: TextStyle(fontSize: 16.0),),
            Text('- The mobile version of Call of Duty is free to play', style: TextStyle(fontSize: 16.0),),
            Text('- It features characters, weapons and maps from across the history of Call of Duty', style: TextStyle(fontSize: 16.0),),
            Text('- Multiplayer is at the core of COD Mobile, and you\'ll be able to join up with friends to play in teams', style: TextStyle(fontSize: 16.0),),
            Text('- COD: Mobile plays host to a Blackout-style Battle Royale mode, which can be unlocked after a small amount of play', style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 10.0,),
            Text('How to download COD Mobile', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Go on to the Android or Apple app store to download Call of Duty: Mobile. Check out our more in-depth guide if you want more information, as well as help with downloading Call of Duty: Mobile on your PC to play with mouse and keyboard!', style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 10.0,),
            Text('Which weapons are in Call of Duty: Mobile?', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('From the AK47 to the Intervention, COD: Mobile has brought back a whole bunch of series staples. Check out our weapons guide for more!', style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 10.0,),
            Text('Which maps are available in Call of Duty: Mobile?', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('We’ve put together a map guide, giving you the lowdown on each of the available maps on Call of Duty: Mobile. We’ll be adding to it with our favourite tips and angles once we’ve had a bit more time with the game too, so come by for help from Nuketown to Firing Range!', style: TextStyle(fontSize: 16.0),),
          ],
        ),
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
