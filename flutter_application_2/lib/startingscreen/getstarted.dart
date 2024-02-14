import 'package:flutter/material.dart';
import 'package:flutter_application_2/startingscreen/scrollingscreen.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  bool remembder = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff010220),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image.asset("images/barracks.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          unselectedWidgetColor: Colors.white,
                        ),
                        child: Checkbox(
                            hoverColor: Colors.white,
                            activeColor: Colors.green,
                            value: remembder,
                            focusColor: Colors.white,
                            checkColor: Colors.black,
                            onChanged: (value) {
                              remembder = value!;

                              setState(() {});
                            }),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "agree and countinue with",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //             builder: (context) {
                          //               return Privacypolicy();
                          //             },
                          //           ));
                        },
                        child: const Text(
                          "  Privacy Policy",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  MaterialButton(
                    onPressed: remembder == false
                        ? null
                        : () {
                             Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const Scrollingscreen();
                                  },
                                ));
                          },
                    height: 40,
                    minWidth: 200,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        remembder == false
                            ? Container()
                            : const Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.double_arrow_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "version-1.0.0",
                          style:
                              TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}