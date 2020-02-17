import 'package:flutter/material.dart';

class LMGs extends StatelessWidget {
  final List<LMG> lmgGuns = [
    LMG(title: 'S36',
        image: 'assets/images/weapons/s36.jpg',
        damage: '70',
        fireRate: '75',
        accuracy: '35'),
    LMG(title: 'UL736',
        image: 'assets/images/weapons/ul736.jpg',
        damage: '70',
        fireRate: '60',
        accuracy: '45'),
    LMG(title: 'RPD',
        image: 'assets/images/weapons/rpd.jpg',
        damage: '65',
        fireRate: '65',
        accuracy: '40'),
    LMG(title: 'M4LMG',
        image: 'assets/images/weapons/M4LMG.png',
        damage: '60',
        fireRate: '55',
        accuracy: '60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LMGs'),
      ),
      body: ListView.builder(
        itemCount: lmgGuns.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('${lmgGuns[index].image}'),
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
                          Text('${lmgGuns[index].title}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Damage', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${lmgGuns[index].damage}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Fire Rate', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${lmgGuns[index].fireRate}'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('Accuracy', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('${lmgGuns[index].accuracy}'),
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

class LMG {
  final String title;
  final String image;
  final String damage;
  final String fireRate;
  final String accuracy;

  LMG({this.title, this.image, this.accuracy, this.damage, this.fireRate,});
}
