import 'package:classic/pages/login_page.dart';
import 'package:classic/utilities/routes.dart';
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
          fontFamily: GoogleFonts.poppins().fontFamily, //lato doge toh niche latotexttheme hi deni padegi
          
          
          
          primaryTextTheme: GoogleFonts
              .poppinsTextTheme() //isse kuch jyada changes nahi aare so use fontfamily
          ),
          debugShowCheckedModeBanner: false,//to remove debug wala print in the corner
      darkTheme: ThemeData(brightness: Brightness.dark),
       
        

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => login_page(),
        MyRoutes.loginRoute: (context) => login_page(),
        MyRoutes.homeRoute: (context) =>home_page(), //error aayega bcoz in line 20 pehl se hi home define kiya hai and again in this line / use kiya jiska meaning hi home ke route karna hai so either line 15 rakho ya line 22
        //MyRoutes.loginRoute:(context)=>login_page(),
        //login se home page jayega jab login pe cick karega 
      },
    );
  }
}
