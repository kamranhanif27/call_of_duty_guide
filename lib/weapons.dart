import 'package:call_of_duty_mobile_guide/AR.dart';
import 'package:call_of_duty_mobile_guide/SR.dart';
import 'package:call_of_duty_mobile_guide/launcher.dart';
import 'package:call_of_duty_mobile_guide/pistol.dart';
import 'package:call_of_duty_mobile_guide/shotgun.dart';
import 'package:call_of_duty_mobile_guide/smg.dart';
import 'package:call_of_duty_mobile_guide/lmg.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

class Weapons extends StatefulWidget {
  @override
  _WeaponsState createState() => _WeaponsState();
}

class _WeaponsState extends State<Weapons> {

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps', 'Call of Duty', 'games', 'guide', 'pubg', 'fortnit', 'Entertainment', 'live stream'],// or MobileAdGender.female, MobileAdGender.unknown
    testDevices: <String>[], // Android emulators are considered test devices
  );


  InterstitialAd ar = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/9915323781',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd sr = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/5890665901',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd smg = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/1713400133',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd lmg = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/5317263915',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd shotgun = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/8325257556',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd pistol = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/8410331119',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd launcher = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/2016652469',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-8827475189355024~6510091939');
  }

  @override
  void dispose(){
    super.dispose();
    ar?.dispose();
    sr?.dispose();
    smg?.dispose();
    lmg?.dispose();
    shotgun?.dispose();
    pistol?.dispose();
    launcher?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weapons'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0,),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                ar..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AssaultRifles()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('Assault Rifles', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                sr..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SniperRifles()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('Sniper Rifles', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                smg..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SMGs()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('SMGs', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                lmg..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LMGs()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('LMGs', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                shotgun..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Shotguns()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('Shotguns', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                pistol..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Pistols()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('Pistols', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 70,
            child: InkWell(
              onTap: (){
                launcher..load()..show();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Launchers()));
              },
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text('Launchers', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
