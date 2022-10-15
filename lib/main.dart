import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(Myapp()); //as Myapp doesnot exist so create  statelesswidget
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    /*int days = 30;
    String name = "Pratham777";
    double pi = 3.14;
    bool isMale = true;
    num tempreature = 30.5; //num can take int or double

    var day = "tuesday"; //  var can take string or number
   // const pi = 3.14;//cannot change value of pi */

    return MaterialApp(
      home: home_page(), //wrap with widget shortcut(ctrl + .)

      /*    child: Center(              //wrap with center
            child: Container(
             
              child: Text(
                  "welcome to $days with $name $pi "), //string intercollation
            ),
          ),
        ),*/
    );
  }
}
