import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin:EdgeInsets.all(10) ,
       child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container( 
       
     child: FittedBox(
      child: Image.asset("images/barracks.png"),
      fit: BoxFit.fitHeight,
     ),
     height: double.infinity,
     width: double.infinity,
       
    ),
    Container(
        margin: EdgeInsets.all(20),
        child: 
        Center(
          child: 
          ListView(
            
            physics: ScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Create An Account",
                    style: 
                    TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    endIndent: 75,
                    indent: 75,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 100,
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
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                        hintText: '+91',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                     SizedBox(
                      height: 30,
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
                        hintText: 'welcome@gmail.com',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                     SizedBox(
                      height: 30,
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
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                     SizedBox(
                      height: 30,
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
                        hintText: 'Re-Enter Your Password',
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(10),
                        
                      ),
                    ),
                     
                    SizedBox(
                      height: 40,
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
                        child: Text("Sign In",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),),
                        ),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
          ],
        ),
       )
      ),
    );
  }
}