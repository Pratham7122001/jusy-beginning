import 'package:flutter/material.dart';


void main() {
  runApp(Myapp());//as Myapp doesnot exist so create  statelesswidget
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(                     //wrap with widget shortcut(ctrl + .)
      home:Material(
        child: Center(
          child: Container(                   //wrap with center
            child: Text("welcome"),
          ),
        ),
      ),
    );
  }
  }
