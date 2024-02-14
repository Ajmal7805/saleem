import 'package:flutter/material.dart';

class Changeprofile extends StatefulWidget {
  const Changeprofile({super.key});

  @override
  State<Changeprofile> createState() => _ChangeprofileState();
}

class _ChangeprofileState extends State<Changeprofile> {
  String? gender = 'male';
  List<String> selectedgender = ['male', 'female', 'genarel'];
  TextEditingController name = TextEditingController();
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
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 98, left: 80),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Enter your Name';
                }
                return null;
              },
              controller: name,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Enter Your Name',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Enter your Phone Number';
                }
                return null;
              },
              // controller: phonenumbercontroller,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Enter Your Phone Number',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Enter your Email';
                }
                return null;
              },
              //controller: emailcontroller,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Enter Your Email',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Enter your Password';
                }
                return null;
              },
              //controller: passwordcontroller,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Enter Your Password',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
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
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Re Enter Your Password',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            DropdownButton(
              dropdownColor: Colors.black,
              iconEnabledColor: Colors.white,
              borderRadius: BorderRadius.circular(20),
              focusColor: Colors.black,
              hint: const Text(
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
                  child: Text(
                    gender,
                    style: const TextStyle(color: Colors.white),
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
              // controller: agecontroller,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(2)),
                  focusColor: Colors.white,
                  labelText: 'Enter Your age',
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
