import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/scanner.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen10.dart';
import 'package:flutter_application_1/screen11.dart';
import 'package:flutter_application_1/screen12.dart';
import 'package:flutter_application_1/screen2.dart';
import 'package:flutter_application_1/screen3.dart';
import 'package:flutter_application_1/screen4.dart';
import 'package:flutter_application_1/screen5.dart';
import 'package:flutter_application_1/screen6.dart';
import 'package:flutter_application_1/screen7.dart';
import 'package:flutter_application_1/screen8.dart';
import 'package:flutter_application_1/screen9.dart';
import 'package:flutter_application_1/welcomepage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'infocard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: MediaQuery.of(context).size.width * .75,
        child: Drawer(
          backgroundColor: Color(0xff757575),
          child: SafeArea(
            child: Column(
              children: [
                // const infocard(Name: "MUhammed Ajmal",profeddion: "Developer"
                //  ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 40,
                  backgroundImage: AssetImage("images/avatar.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ajmal",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),

                ListTile(
                  onTap: () {},
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "images/home.png",
                        color: Colors.black,
                        width: 5,
                      ),
                    ),
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/profile.png",
                    width: 25,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  leading: Image.asset(
                    "images/wishlist.png",
                    color: Colors.black,
                    width: 25,
                  ),
                  title: Text(
                    'Wishlist',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  leading: Image.asset("images/location.png", width: 25),
                  title: Text(
                    'location',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  leading: Image.asset("images/instagram.png", width: 25),
                  title: Text(
                    'Instagram',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  leading: Image.asset("images/settings.png", width: 25),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  leading: Image.asset("images/aboutus.png", width: 25),
                  title: Text(
                    'About us',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  height: 30,
                ),

                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ));
                  },
                  height: 30,
                  minWidth: 140,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.red,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log out",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15, color: Colors.white)),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffe8e2db),
      bottomNavigationBar: BottomAppBar(
          child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        height: 60,
        minWidth: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Homescreen();
                      },
                    ));
                  },
                  child: Image.asset(
                    "images/home.png",
                    height: 50,
                    width: 50,
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Scanner();
                      },
                    ));
                  },
                  child: Image.asset("images/scan.png")),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Homescreen();
                    },
                  ));
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Cart();
                      },
                    ));
                  },
                  child: Image.asset(
                    "images/cart.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
