import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen/homescreen.dart';

import '../drawerscreen.dart/profile.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool passwordVisible = false;
  bool isback = true;
  double angle = 0;
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController gendero = TextEditingController();

  String? gender = 'male';
  List<String> selectedgender = ['male', 'female', 'genarel'];
  final formkeys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff010220),
      body: Container(
        margin:const EdgeInsets.only(top: 50, bottom: 50, right: 20, left: 20),
        decoration: BoxDecoration(
            border: Border.all(color:const Color(0xff010220), width: 2),
            borderRadius: BorderRadius.circular(25)),
        child: GestureDetector(
          onTap: () {},
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: angle),
            duration:const Duration(seconds: 1),
            builder: (context, value, child) {
              if (value >= (pi / 2)) {
                isback = false;
              } else {
                isback = true;
              }
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(value),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: isback
                      ? Container(
                          margin:const EdgeInsets.all(10),
                          child: ListView(
                            children: [
                             const SizedBox(
                                height: 20,
                              ),
                            const  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 38,
                              ),
                            const  SizedBox(
                                height: 27,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your email address';
                                  }
                                  return null;
                                },
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Email address',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your password';
                                  }
                                  return null;
                                },
                                //controller: textfieldcontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                obscureText: passwordVisible,

                                decoration: InputDecoration(
                                    focusColor: Colors.white,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            passwordVisible = !passwordVisible;
                                          },
                                        );
                                      },
                                      icon: Icon(
                                        color: Colors.white,
                                        passwordVisible
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        size: 20,
                                      ),
                                    ),
                                    labelText: 'Password',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                             const Divider(color: Colors.white, thickness: 0.5),
                             const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                 const Expanded(
                                    child: Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.red),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: InkWell(
                                      onTap: () {
                                        _flip();
                                      },
                                      child:const Text(
                                        'Sigh up',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            const  SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return const Homescreen();
                                          },
                                        ));
                                      },
                                      child:const Text(
                                        "Log In",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )),
                                ],
                              ),
                            const  SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child:const ListTile(
                                  leading: Image(
                                      image: AssetImage(
                                        'images/google.webp',
                                      ),
                                      height: 20),
                                  title: Text(
                                    'Countinue with Google',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            const  SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child:const ListTile(
                                  leading: Image(
                                      image: AssetImage(
                                        'images/fb.png',
                                      ),
                                      height: 20),
                                  title: Text(
                                    'Countinue with Facebook',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..rotateY(pi),
                          child: Container(
                            margin:const EdgeInsets.all(20),
                            width: double.infinity,
                            child: ListView(children: [
                            const  SizedBox(
                                height: 50,
                              ),
                            const  Text(
                                'CREATE AN ACCOUNT',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            const  SizedBox(
                                height: 20,
                              ),
                            const  Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            const  SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your Name';
                                  }
                                  return null;
                                },
                                controller: namecontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Enter Your Name',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your Phone Number';
                                  }
                                  return null;
                                },
                                controller: phonenumbercontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Enter Your Phone Number',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your Email';
                                  }
                                  return null;
                                },
                                controller: emailcontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Enter Your Email',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your Password';
                                  }
                                  return null;
                                },
                                controller: passwordcontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Enter Your Password',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Re Enter Your Password';
                                  }
                                  return null;
                                },
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Re Enter Your Password',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                              DropdownButton(
                                dropdownColor: Colors.black,
                                iconEnabledColor: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                focusColor: Colors.black,
                                hint:const Text(
                                  'Please choose a gender',
                                  style: TextStyle(color: Colors.white),
                                ),
                                value: gender,
                                onChanged: (newValue) {
                                  setState(() {
                                    gender = newValue;
                                  });
                                },
                                items: selectedgender.map((gender) {
                                  return DropdownMenuItem(
                                    value: gender,
                                    child:  Text(
                                      gender,
                                      style:  const TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return 'Enter your age';
                                  }
                                  return null;
                                },
                                controller: agecontroller,
                                cursorColor: Colors.white,
                                style:const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusColor: Colors.white,
                                    labelText: 'Enter Your age',
                                    labelStyle:const TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            const  SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  showDialog<void>(
                                    context: context,
                                    // user must tap button!
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        backgroundColor: Colors.white70,
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                          const  Text('Welcome To Barracks',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.black)),
                                          const  Divider(
                                              color: Colors.black,
                                              thickness: 2,
                                            ),
                                          const  Text(
                                              "You Can Select And Buy Your Massive Colloction Of Fashion Designes And Fashion Icon's And Your celibrate Your Stylis Life",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                          const  SizedBox(
                                              height: 20,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                 
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                      builder: (context) {
                                                        return Profile(
                                                          name: namecontroller
                                                              .text,
                                                          phoneno:
                                                              phonenumbercontroller
                                                                  .text
                                                                  .toString(),
                                                          email: emailcontroller
                                                              .text,
                                                          password:
                                                              passwordcontroller
                                                                  .text,
                                                          age: agecontroller
                                                              .text,
                                                        );
                                                      },
                                                    ));
                                                  
                                                },
                                                child: const Text(
                                                  'Get Started',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ))
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ]),
                          ),
                        ),
                ),
              );
            },
          ),
        ),
      ),
    );
    
  }
}
