import 'package:classic/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'pages/home_page.dart';


void main() {
  runApp(Myapp()); //as Myapp doesnot exist so create  statelesswidget
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override //kisine yeh pehle banaya hua hai,abb tum isme kuch kaam karo
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: home_page(),
      themeMode: ThemeMode
          .light, //if light ke jagah dark use karunga toh colors koi bhi dalo loi farak nahi padega
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts.lato().fontFamily,//lato doge toh niche latotexttheme hi deni padegi
        primaryTextTheme: GoogleFonts.latoTextTheme() //isse kuch jyada changes nahi aare so use fontfamily
        ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      //initialRoute: "/home",
      routes: {
        "/":(context)=>home_page(),//error aayega bcoz in line 15 pehl se hi home define kiya hai and again in this line / use kiya jiska meaning hi home ke route karna hai so either line 15 rakho ya line 22   
        "/":(context)=>login_page(),
        "/login":(context)=>login_page(),
      
      },
    );
  }
}
