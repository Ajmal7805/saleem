import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'infocard.dart';

class Sidemenubar extends StatefulWidget {
  const Sidemenubar({super.key});

  @override
  State<Sidemenubar> createState() => _SidemenubarState();
}

class _SidemenubarState extends State<Sidemenubar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      color: Color(0xff152238),
      child: Drawer(
        child: Column(
          children: [
           const infocard(Name: "MUhammed Ajmal",profeddion: "Developer"
           ),
           Divider(
            color: Colors.white,
            height: 1,
           ),
           ListTile(
            onTap: () {
              
            },
            leading: 
            SizedBox(
              height: 34,
              width: 34,
              child: Image.asset("images/home.png",color: Colors.white,
              
              ),
              
            ),
            title: Text("Home",
            style: 
            TextStyle(color: Colors.white),),
           ),
           ListTile(
    leading: Icon(Icons.access_alarm_sharp,color: Colors.white,),
    title: Text('alarm',style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
      
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
         
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.heart_broken_rounded,color: Colors.red,),
    title: Text('favourite',style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
      //color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.notifications,color: Colors.white,),
    title: Text('Request'
    ,style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
      color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '8',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.feedback_outlined,color: Colors.white,),
    title: Text('feed back'
    ,style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
      //color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.workspaces_rounded,color: Colors.white,),
    title: Text('workspace'
    ,style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
      //color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons.alt_route_sharp,color: Colors.white,),
    title: Text('Rout'
    ,style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
     // color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    ListTile(
    leading: Icon(Icons. add_location,color: Colors.white,),
    title: Text('location'
    ,style: TextStyle(color: Colors.white),),
    onTap: () => null,
    trailing: ClipOval(
    child: Container(
     // color: Colors.red,
      width: 20,
      height: 20,
      child: Center(
        child: Text(
        '',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
        ),
      ),
    ),
    ),
    ),
    SizedBox(
    height: 60,
    ),
    Divider(
            color: Colors.white,
            height: 1,
           ),
           SizedBox(
    height: 60,
    ),
    Text(
    "LOG OUT",
    style: 
    TextStyle(fontWeight: FontWeight.bold,
      fontSize: 
      22,
      color: 
      Colors.red,
      
    ),
    )
          ],
        ),
      ),
    );
    
  }
}

