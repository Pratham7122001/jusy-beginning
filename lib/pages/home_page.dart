import 'package:classic/models/catalog.dart';
import 'package:classic/widgets/drawer.dart';
import 'package:classic/widgets/item_widget.dart';
import 'package:flutter/material.dart'; //material library ke wajah se jo bhi ui dikh raha hai jaise poshakh center me hai and bar ka color blue hai tjis is all bcoz materila library

class home_page extends StatelessWidget {
  //const home_page({super.key});
  final int days = 30;
  final String name = "Pratham777";
  var key;

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(4, (index) => CatalogModel.items[0]); // create copy of items if we donot have more items to check ui or anything 
    //widget is a component

    return Scaffold(
      //replace material with scaffold-->>is a widget where their will be head,foot body for interface
      appBar: AppBar(
        //blue color ka bar in the top
        title: Text(
            "Poshakh - The Clothing Hub"), //title takes a widget called Text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length, //changes catalogmodel.items with dummylist
          itemBuilder: (context, index) {
            return Itemwidget(
              key: key,
              item: dummylist[index], //changed catalogmodel.items with dummylist
            );
          },
        ),
      ),

      drawer: MyDrawer(), //corner me three lines
    );
  }
}
