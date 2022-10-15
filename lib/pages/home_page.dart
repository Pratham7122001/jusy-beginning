import 'package:flutter/material.dart'; //material library ke wajah se jo bhi ui dikh raha hai jaise poshakh center me hai and bar ka color blue hai tjis is all bcoz materila library

class home_page extends StatelessWidget {
  //const home_page({super.key});
  final int days = 30;
  final String name = "Pratham777";

  @override
  Widget build(BuildContext context) {      //widget is a component 
    return Scaffold(
      //replace material with scaffold-->>is a widget where their will be head,foot body for interface
      appBar: AppBar(
        //blue color ka bar in the top
        title: Text(
            "Poshakh - The Clothing Hub"), //title takes a widget called Text
      ),
      body: Center(           //wrap with center (ctrl + .)  // child with body
        
        child: Container(
          child: Text("welcome to $days with $name "), //string intercollation
        ),
      ),
      drawer: Drawer(), //corner me three lines
    );
  }
}
