import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips And Tricks'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        width: double.infinity,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Regardless of your experience with mobile shooters, this guide is sure to help you adjust to playing Call of Duty Mobile, whether that\'s in multiplayer or battle royale mode.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Multiplayer',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '1) You are a team of five. Don\'t everyone start rushing madly towards the enemy base from one direction only? Mix it up. Make it two from each side or three from one and a sniper/ rifleman plus rifleman from the other. Or sometimes, do rush, all five of you, from one side only. But keep changing the tactics. Three from one side and two from the other would be a balanced one.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '2) You don\'t necessarily need to have a sniper in the team. Let one become one only if he/she has good sniping skills. Else, it won\'t be that beneficial. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '3) The team that reaches a certain number of kills first wins. So, put a price on your head. Don\'t just always keep rushing here and there in pursuit of enemies. Try not to just present yourself as a target. Keep checking the map and the gunshots would reveal the position of the opposition. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '4) Don\'t always roam around in the open. Try to move through the buildings and take cover whenever possible. Try not showing yourself unless you are firing at someone. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '5) Aim at the head. Always. You\'ll kill them faster. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '6) Keep upgrading the weapons in your loadouts as you level up. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '7) Make good use of sentry guns, killer drones and missiles. They always help you score more kills. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '8) Knives can be smart weapons only if you are good at combining moving and jabbing in a flash.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '9) Keep away from probable places of discovery like balconies unless you have real good sniping or long shot skill with the rifles. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '10) Try lobbing grenades first towards where you think the enemy could be and then rushing in. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '11) Don\'t just keep waiting in a corner or behind a cover forever. Someone will find you before you do. Keep changing your position.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '12) Assists are an important part of Call of Duty: Mobile and the game encourages you to develop co-op coordination in intense firefight moments. Try to train with one of your mates for better synchronisation and faster kills. ',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Battle Royale',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'How to revive your Teammate',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'When your teammates die they will drop their dog tags, you need to pick up that dog tags to revive them. Tap on revive button and wait for the progress bar to fill and your teammate will respawn on the plane and be ready to come back into the battle.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Call of Duty Mobile battle royale classes',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                  'While most battle royale games require you to scavenge and search for every piece of equipment you use, Call of Duty Mobile battle royale is introducing six unique classes to the game, each with a particular talent: \n\n'
                  'Clown: A master of distraction and friend of the undead, this class has a Toy Bomb to detonate, summoning zombies that only attack hostiles near to them; due in part to the Clown having the Anti-Zombie ability, which reduces the zombies’ aggression distance.\n\n'
                      'Defender: With the ability to place a deformable Transform Shield, this class also is Reinforced, raising resistance to all damage except bullets.\n'
                      'Mechanic: Able to call an EMP Drone to create electro-magnetic interference on hostile forces, this class also features the Engineer ability, granting augmented sight to vehicles, hostile traps, and other equipment.\n\n'
                      'Medic: This class can place a Medical Station that continuously heals the Medic and associated allies in the immediate vicinity. In addition, the Master Healer ability allows a Medic to heal more quickly, and reduces the time it takes to revive teammates.\n\n'
                      'Ninja: This clandestine class has a Grapple Gun that fires a hook, allowing you to propel yourself up and onto target buildings or across the landscape at speed. Movement is quiet too, due to this class having the Dead Silence ability.\n\n'
                      'Scout: Utilizing the Sensor Dart that can view hostile positions in the immediate area of the radar map, this class also benefits from the Tracker ability; allowing you to see fresh footprints of hostiles.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'So while you\'ll need to loot weapons and armor yourself on the battlefield, you\'ll start with a piece of equipment and a perk depending on which class you choose.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 60.0,
            ),
          ],
        ),
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
