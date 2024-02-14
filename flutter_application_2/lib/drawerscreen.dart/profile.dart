import 'package:flutter/material.dart';
import 'package:flutter_application_2/drawerscreen.dart/changeprofile.dart';
import 'package:flutter_application_2/homescreen/homescreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key,required this.name,required this.phoneno,required this.email,required this.password,required this.age});
  final String name;
  final String phoneno;
  final String email;
  final String password;
  final String age;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff010220),
        appBar: AppBar(
          backgroundColor: const Color(0xff010220),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.wb_sunny_outlined, color: Colors.white))
          ],
          title: const Text(
            'Profile',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.all(25),
          child: Stack(
            children: [
              ListView(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const Changeprofile();
                        },));
                      }, child: const Text(
                          'Change Profile',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),)
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                 
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white30, width: 2)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            widget.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          title: Text(
                            widget.phoneno,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          title: Text(
                            widget.email,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.man,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Male',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          title: Text(
                            '********',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.person_add_alt_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            widget.age,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Homescreen();
                    },));
                  }, icon: const Icon(Icons.arrow_circle_right_rounded,color: Colors.white,))
                ],
              ),
            ],
          ),
        ));
  }
}