// ignore: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:classic/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:classic/utilities/routes.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool change_button = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          //to add scrolling and to check make changes in height
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
              ),

              // ignore: prefer_const_constructors
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          //welcome ke aage naam type hoga as username dalega
                          name = value;
                          setState(() {});
                        },
                      ),

                      TextFormField(
                        obscureText: true,

                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),

                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () async{
                         setState(() {
                            change_button = true;
                         });


                         await Future.delayed(Duration(seconds:1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: change_button? 50 : 150,
                          height: 50,
                          //color: Colors.brown[700],
                          alignment: Alignment.center,
                          child: change_button?Icon(Icons.done,color: Colors.white,): Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.brown[700],
                              //shape: change_button?BoxShape.circle:BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(change_button? 20:8)
                         ),
                          ),
                      ),

                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context,
                      //         MyRoutes.homeRoute); //ek page se dusre page pe jana
                      //   },
                      //   child: Text("login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                      // )
                    ],
                  ))
            ],
          ),
        ));
  }
}
