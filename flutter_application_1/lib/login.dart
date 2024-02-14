import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/privacypolicy.dart';
import 'package:flutter_application_1/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container( 
        margin: EdgeInsets.all(25),
        child: Center(
          child: ListView(
            physics: ScrollPhysics(),
            children: [
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 50,
                backgroundImage: AssetImage("images/google.webp",),
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        print("search");
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusColor: Colors.white,
                        hintText: '   Email',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                     TextField(
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {
                        print("search");
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusColor: Colors.white,
                        hintText: '   Password',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red
                          ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Signup();
                  },
                ));
                        },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Homescreen();
                  },
                ));
                          },
                        height: 40,
                        minWidth: 100,
                        shape: 
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),color: Colors.blue,
                        child: Text("Log In",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                   MaterialButton(
              onPressed: () {},
              height: 40,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                20,
              )),
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    'images/google.webp',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Login with google",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {},
              height: 40,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                20,
              )),
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    'images/fb.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Login with FaceBook",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: 
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Privacypolicy();
                  },
                ));
                  },
                    child: Text(
                      "Privacy Policy",
                      style: 
                      TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
                    
              
            ],
          ),
        ),
      ),
    );
  }
}