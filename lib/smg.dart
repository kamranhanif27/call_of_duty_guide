import 'package:flutter/material.dart';


class SMGs extends StatelessWidget {
  final List<Smg> smgGuns = [
    Smg(title: 'PDW-57',
        image: 'assets/images/weapons/PDW57.jpg',
        damage: '90',
        fireRate: '50',
        accuracy: '40'),
    Smg(title: 'AKS-74U',
        image: 'assets/images/weapons/AKS-74U.jpg',
        damage: '80',
        fireRate: '60',
        accuracy: '55'),
    Smg(title: 'MSMC',
        image: 'assets/images/weapons/msmc.jpg',
        damage: '75',
        fireRate: '70',
        accuracy: '45'),
    Smg(title: 'HG40',
        image: 'assets/images/weapons/hg-40.jpg',
        damage: '75',
        fireRate: '40',
        accuracy: '60'),
    Smg(title: 'Chicom',
        image: 'assets/images/weapons/Chicom.png',
        damage: '75',
        fireRate: '65',
        accuracy: '60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMGs'),
      ),
      body: ListView.builder(
        itemCount: smgGuns.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${smgGuns[index].image}'),
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
                          Text('${smgGuns[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${smgGuns[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${smgGuns[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${smgGuns[index].accuracy}'),
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

class Smg {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  Smg({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
