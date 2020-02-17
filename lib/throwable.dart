import 'package:flutter/material.dart';

class Throwables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Throwables'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/sticky-grenade.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('A grenade that sticks\nto surfaces before detonating.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/frag-grenade.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Explodes after a short delay.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/trip-mine.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Magnetic mine that detonates when an enemy trips that laser trigger.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/flash-bang.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Device that blind and deafens the target when detonated.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/smoke-grenade.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Grenade that creates a smokescreen when detonated.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/concussion-grenade.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Disorients and slow enemy movement speed.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/emp.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Damage and disables nearby mechanized enemy unites and equipment.')),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/throwables/trophy-system.jpg'),
                  SizedBox(width: 10.0,),
                  Flexible(child: Text('Adeployable autonomous defense system that destroys incoming explosives.')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
