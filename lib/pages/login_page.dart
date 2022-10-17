// ignore_for_file: prefer_const_constructors

import 'package:classic/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:classic/utilities/routes.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

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
              
              Text(
                "Welcome",
               
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);//ek page se dusre page pe jana 
                      },
                      child: Text("login"),
                      style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
