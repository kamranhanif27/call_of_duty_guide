import 'package:flutter/material.dart';

class Launchers extends StatelessWidget {
  final List<Launcher> launchers = [
    Launcher(title: 'SMRS',
        image: 'assets/images/weapons/smrs.PNG',
        damage: '95',
        fireRate: '10',
        accuracy: '70'),
    Launcher(title: 'FHJ-18',
        image: 'assets/images/weapons/fhj-18.PNG',
        damage: '90',
        fireRate: '10',
        accuracy: '90'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launchers'),
      ),
      body: ListView.builder(
        itemCount: launchers.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${launchers[index].image}'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Name', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${launchers[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${launchers[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${launchers[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${launchers[index].accuracy}'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Launcher {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  Launcher({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
