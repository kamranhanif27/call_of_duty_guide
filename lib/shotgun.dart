import 'package:flutter/material.dart';

class Shotguns extends StatelessWidget {
  final List<Shotgun> ShotGuns = [
    Shotgun(title: 'Striker',
        image: 'assets/images/weapons/striker.jpg',
        damage: '85',
        fireRate: '35',
        accuracy: '85'),
    Shotgun(title: 'HS0405',
        image: 'assets/images/weapons/hs0405.jpg',
        damage: '90',
        fireRate: '5',
        accuracy: '85'),
    Shotgun(title: 'BY15',
        image: 'assets/images/weapons/by15.jpg',
        damage: '85',
        fireRate: '20',
        accuracy: '80'),
    Shotgun(title: 'HS2126',
        image: 'assets/images/weapons/hs2126.PNG',
        damage: '75',
        fireRate: '45',
        accuracy: '70'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shotguns'),
      ),
      body: ListView.builder(
        itemCount: ShotGuns.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${ShotGuns[index].image}'),
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
                          Text('${ShotGuns[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${ShotGuns[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${ShotGuns[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${ShotGuns[index].accuracy}'),
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


class Shotgun {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  Shotgun({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
