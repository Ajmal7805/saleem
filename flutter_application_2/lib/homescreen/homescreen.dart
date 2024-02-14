import 'package:flutter/material.dart';
import 'package:flutter_application_2/startingscreen/loginscreen.dart';

import '../drawerscreen.dart/aboutus.dart';
import '../drawerscreen.dart/profile.dart';
import '../drawerscreen.dart/settings.dart';
import '../drawerscreen.dart/wishlist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selecteditems = 0;
  static Widget optionStyle = Container();
  final List<Widget> _widgetOptions = <Widget>[
   
    const Text(
      'THIS IS SCANNERPAGE',
    ),
    const Text('THIS IS CART PAGE')
  ];
  void tappeditems(int index) {
    setState(() {
      selecteditems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * .75,
        child: Drawer(
          backgroundColor: const Color(0xff010220),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 40,
                  backgroundImage: AssetImage("images/avatar.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ajmal",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Image.asset(
                      "images/home.png",
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                  title: const Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Profile(
                          name: AutofillHints.name,
                          phoneno: AutofillHints.telephoneNumber,
                          email: AutofillHints.email,
                          password: AutofillHints.password,
                          age: AutofillHints.birthdayDay,
                        );
                      },
                    ));
                  },
                  leading: Image.asset(
                    "images/profile.png",
                    color: Colors.white,
                    width: 25,
                  ),
                  title: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Wishlist();
                      },
                    ));
                  },
                  leading: Image.asset(
                    "images/wishlist.png",
                    color: Colors.white,
                    width: 25,
                  ),
                  title: const Text(
                    'Wishlist',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/location.png",
                    width: 25,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'location',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(
                    "images/instagram.png",
                    width: 25,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Instagram',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Settings();
                      },
                    ));
                  },
                  leading: Image.asset(
                    "images/settings.png",
                    width: 25,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Aboutus();
                      },
                    ));
                  },
                  leading: Image.asset(
                    "images/aboutus.png",
                    width: 25,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'About us',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 60,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Loginscreen();
                      },
                    ));
                  },
                  height: 30,
                  minWidth: 140,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.red,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log out",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
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
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.amber[800],
          showUnselectedLabels: true,
          elevation: 0,
          currentIndex: selecteditems,
          onTap: tappeditems,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Image(
                  image: AssetImage(
                    'images/home.png',
                  ),
                  height: 35,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Image(
                  image: AssetImage(
                    'images/scan.png',
                  ),
                  height: 35,
                ),
                label: 'Scanner'),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    'images/cart.png',
                  ),
                  height: 35,
                ),
                label: 'My cart')
          ]),
      body: Center(
        child: _widgetOptions.elementAt(selecteditems),
      ),
    );
  }
}
