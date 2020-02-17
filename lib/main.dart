import 'package:call_of_duty_mobile_guide/about_cod.dart';
import 'package:call_of_duty_mobile_guide/throwable.dart';
import 'package:call_of_duty_mobile_guide/tips.dart';
import 'package:call_of_duty_mobile_guide/weapons.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Call of Duty Mobile Ultimate Guide',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps', 'Call of Duty', 'games', 'guide', 'pubg', 'fortnit', 'Entertainment', 'live stream'],// or MobileAdGender.female, MobileAdGender.unknown
    testDevices: <String>[], // Android emulators are considered test devices
  );

  BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-8827475189355024/3361184415',
    size: AdSize.banner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  InterstitialAd myInterstitial1 = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/1445806823',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd myInterstitial2 = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/8609980977',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd myInterstitial3 = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/7778462642',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );
  InterstitialAd myInterstitial4 = InterstitialAd(
    adUnitId: 'ca-app-pub-8827475189355024/6167650466',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-8827475189355024~6510091939');
    myBanner..load()..show();
  }

  @override
  void dispose(){
    super.dispose();
    myBanner?.dispose();
    myInterstitial1?.dispose();
    myInterstitial2?.dispose();
    myInterstitial3?.dispose();
    myInterstitial4?.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Call of Duty Mobile Guide', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.info),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AboutMe()));
              },
            ),
            SizedBox(width: 15.0,),
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 10.0,),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: (){
                  myInterstitial1..load()..show();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AboutCod()));
                },
                child: Card(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('About\nCall of Duty Mobile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
                      ),
                      ClipPath(
                        clipper: LeftImageClip(),
                        child: Image.asset('assets/images/about.jpg',fit: BoxFit.cover,alignment: Alignment.topCenter,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: (){
                  myInterstitial2..load()..show();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Tips()));
                },
                child: Card(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipPath(
                        clipper: RightImageClip(),
                        child: Image.asset('assets/images/tips.png',fit: BoxFit.cover,alignment: Alignment.topCenter,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text('Tips and Trick\nto become pro', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: (){
                  myInterstitial3..load()..show();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Weapons()));
                },
                child: Card(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Weapons', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      ),
                      ClipPath(
                        clipper: LeftImageClip(),
                        child: Image.asset('assets/images/guns.jpg',fit: BoxFit.cover,alignment: Alignment.topLeft,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 100,
              child: InkWell(
                onTap: (){
                  myInterstitial4..load()..show();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Throwables()));
                },
                child: Card(
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipPath(
                        clipper: RightImageClip(),
                        child: Image.asset('assets/images/throwables.png',fit: BoxFit.cover,alignment: Alignment.center,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text('Throwables', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
          ],
        ),
      );
  }
}

class LeftImageClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width / 4.0, 0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(LeftImageClip oldClipper) => false;
}

class RightImageClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - (size.width / 4.0), 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(RightImageClip oldClipper) => false;
}
