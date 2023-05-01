import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory/InventoryDetail.dart';
import 'package:inventory/MyWelcomePage.dart';

import 'LoginPage.dart';

class MyWelcome extends StatefulWidget {
  const MyWelcome({Key? key}) : super(key: key);
  @override
  State<MyWelcome> createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  @override
//Color(0xff2D282A) Secondary
  //Color(0XFF92191C) Primary colour
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF9211C),
          foregroundColor: const Color(0xff2D282A),
          title: const Text(
            'Pro E-commerce',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          leading: Image.asset('Asset/Pro17Logo.PNG'),
          // leading: AssetImage('Asset/Pro17Logo.PNG'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image.asset('Asset/Pro17Logo.PNG'),
                  //child: Image(image:AssetImage('Asset/Pro17Logo.PNG')),
                  height: 180,
                  width: 300,
                ),
                const SafeArea(
                  child: Text(
                    'Create a Free Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPages()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF92191C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InventoryDetail()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2D282A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
