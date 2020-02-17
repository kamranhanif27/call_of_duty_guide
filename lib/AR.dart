import 'package:flutter/material.dart';

class AssaultRifles extends StatelessWidget {

  final List<AR> arGuns = [
    AR(title: 'M4',
    image: 'assets/images/weapons/m4.jpg',
    accuracy: '70',
    damage: '45',
    fireRate: '60',),
    AR(title: 'AK47',
        image: 'assets/images/weapons/ak47.jpg',
        accuracy: '45',
        damage: '70',
        fireRate: '55',),
    AR(title: 'M16',
        image: 'assets/images/weapons/m16.PNG',
        accuracy: '60',
        damage: '65',
        fireRate: '45',),
    AR(title: 'BK57',
      image: 'assets/images/weapons/bk57.jpg',
      accuracy: '65',
      damage: '48',
      fireRate: '63',),
    AR(title: 'LK24',
      image: 'assets/images/weapons/LK24.jpg',
      accuracy: '67',
      damage: '45',
      fireRate: '60',),
    AR(title: 'ASM10',
      image: 'assets/images/weapons/ASM10.jpg',
      accuracy: '50',
      damage: '60',
      fireRate: '55',),
    AR(title: 'Type25',
      image: 'assets/images/weapons/TYPE-25.jpg',
      accuracy: '45',
      damage: '55',
      fireRate: '70',),
    AR(title: 'AK117',
      image: 'assets/images/weapons/AK117.jpg',
      accuracy: '55',
      damage: '50',
      fireRate: '70',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assault Rifles'),
      ),
      body: ListView.builder(
        itemCount: arGuns.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${arGuns[index].image}'),
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
                          Text('${arGuns[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${arGuns[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${arGuns[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${arGuns[index].accuracy}'),
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


class AR {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  AR({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
