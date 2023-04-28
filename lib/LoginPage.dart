import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final email1 = TextEditingController();
  final pass = TextEditingController();

  @override
  //Dispose method performs all object cleanup,
  void dispose() {
    email1.dispose();
    super.dispose();
  }

  @override
  //addListener for loop
  void initState() {
    super.initState();
    email1.addListener(() => setState(() {}));
    pass.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     'Pro E-Commerce',
        //     style: TextStyle(fontSize: 30),
        //   ),
        //   backgroundColor: const Color(0x0ff9211c),
        //   foregroundColor: const Color(0xff2D282A),
        //   centerTitle: true,
        //   leading: Image.asset('Asset/Pro17Logo.PNG'),
        // ),
        //----------------------------------------------------------
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'Asset/Pro17Logo.PNG',
                    height: 100,
                    width: 250,
                  ),

                  //----------------------------------------------------------
                  const SizedBox(
                    height: 50,
                  ),
                  //----------------------------------------------------------
                  SizedBox(
                    height: 70,
                    width: 300,
                    child: TextFormField(
                      // onChanged: (value) {
                      //   if (value.isEmpty) {
                      //     return ;
                      //   }
                      // },

                      validator: (email1) {
                        if (email1 != 'a') {
                          return 'Enter correct email id';
                        } else {
                          return 'Enrer';
                        }
                      },

                      keyboardType: TextInputType.emailAddress,
                      controller: email1,
                      decoration: InputDecoration(
                        label: const Text(
                          'Email ID',
                          style: TextStyle(
                            color: Color(0XFF92191C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        hintText: 'example@pro17analytics.com',

                        prefixIcon: const Icon(Icons.email_outlined),
                        prefixIconColor: const Color(0XFF92191C),

                        //Validation is empty to disappear suffixicon
                        suffixIcon: email1.text.isEmpty
                            ? Container(
                                width: 0,
                              )
                            : IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () => email1.clear(),
                                color: const Color(0XFF92191C),
                              ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color(0XFF92191C),
                          ),
                        ),

                        fillColor: const Color(0XFF92191C),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0XFF92191C),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      //----------------------------------------------------------
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0XFF92191C)),
                    ),
                  ),
                  //----------------------------------------------------------
                  const SizedBox(
                    height: 16,
                  ),
                  //----------------------------------------------------------
                  SizedBox(
                    height: 90,
                    width: 300,
                    child: TextField(
                      controller: pass,
                      maxLength: 15,

                      decoration: InputDecoration(
                        label: const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),

                        //----------------------------------------------------------
                        prefixIcon: const Icon(Icons.password),
                        prefixIconColor: const Color(0xff2D282A),

                        suffixIcon: pass.text.isEmpty
                            ? Container(
                                width: 0,
                              )
                            : IconButton(
                                onPressed: () => pass.clear(),
                                icon: const Icon(Icons.clear),
                                color: const Color(0xff2D282A),
                              ),

                        //----------------------------------------------------------
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color(0xff2D282A),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: Color(0xff2D282A),
                          ),
                        ),
                      ),
                      //----------------------------------------------------------
                      obscureText: true,
                      obscuringCharacter: '.',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0xff2D282A)),
                      //----------------------------------------------------------
                    ),
                  ),
                  //----------------------------------------------------------
                  const SizedBox(
                    height: 50,
                  ),
                  //----------------------------------------------------------
                  SizedBox(
                    height: 70,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF92191C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ),

                  //----------------------------------------------------------
                  Container(
                    width: 350,
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF92191C)),
                    ),
                  ),
                  //----------------------------------------------------------

                  //----------------------------------------------------------
                  const SizedBox(
                    height: 30,
                  ),
                  //----------------------------------------------------------
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: Color(0XFF92191C),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'No Account?, Create a New Accounts ',
                            style: TextStyle(
                              color: Color(0XFF92191C),
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up Now',
                            style: TextStyle(
                                color: Color(0xff2D282A),
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
