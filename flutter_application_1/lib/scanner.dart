import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:image_picker/image_picker.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 30,
              color: Colors.black,
            )),
        actions: [
          Icon(
            Icons.flashlight_on_sharp,
            size: 28,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(onTap: () {
              showDialog<void>(context: context,
              barrierDismissible: true,
               builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('ajmal'),
                      Text('ajmal'),
                    ],
                  ),
                );
              });
            },
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: IconButton(
                  onPressed: ()async {
                    final ImagePicker picker = ImagePicker();
                    var file = await picker.pickImage(source: ImageSource.camera);
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
