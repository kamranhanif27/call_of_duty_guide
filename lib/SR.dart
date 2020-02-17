import 'package:flutter/material.dart';

class SniperRifles extends StatelessWidget {

  final List<SR> srGuns = [
    SR(title: 'DL Q33',
    image: 'assets/images/weapons/DL-Q33.jpg',
    damage: '90',
    fireRate: '15',
    accuracy: '60'),
    SR(title: 'XPR-50',
        image: 'assets/images/weapons/xpr50.jpg',
        damage: '80',
        fireRate: '40',
        accuracy: '55'),
    SR(title: 'M21 EBR',
        image: 'assets/images/weapons/M21-EBR.jpg',
        damage: '85',
        fireRate: '35',
        accuracy: '60'),
    SR(title: 'Arctic.50',
        image: 'assets/images/weapons/arcitc-50.jpg',
        damage: '85',
        fireRate: '30',
        accuracy: '60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sniper Rifles'),
      ),
      body: ListView.builder(
        itemCount: srGuns.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${srGuns[index].image}'),
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
                          Text('${srGuns[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${srGuns[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${srGuns[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${srGuns[index].accuracy}'),
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


class SR {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  SR({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
