import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infocard extends StatelessWidget {
  const infocard({
    super.key, required this.Name, required this.profeddion,
  });
  final String Name, profeddion;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,color: Colors.white,
        ),
      ),
      title: Text(Name, style: 
      TextStyle(
        fontSize: 
        18,
        color: Colors.white
      ),),
      
      subtitle: Text(profeddion,
      style: 
      TextStyle(
        fontSize: 
        18,
        color: Colors.white
      ),),
    );
  }
}