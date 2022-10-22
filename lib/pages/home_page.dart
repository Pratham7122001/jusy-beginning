import 'package:classic/models/catalog.dart';
import 'package:classic/widgets/drawer.dart';
import 'package:classic/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //material library ke wajah se jo bhi ui dikh raha hai jaise poshakh center me hai and bar ka color blue hai tjis is all bcoz materila library
import 'dart:convert';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  //const home_page({super.key});
  final int days = 30;

  final String name = "Pratham777";

  var key;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate( 4, (index) => CatalogModel.items[0]); // create copy of items if we donot have more items to check ui or anything
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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ?
             GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 16,
              
              ),
                itemBuilder: ((context, index) {
               final item=CatalogModel.items[index];
               return Card(
                elevation: 16.0,
               clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: GridTile(
                  header: Container(child: Text(item.name ,
                  style: TextStyle(color: Colors.black),),
                  padding: EdgeInsets.all(3),
                  decoration:BoxDecoration(color:Color.fromARGB(255, 118, 90, 165),),
                  
                  
                  ),
                  child: Image.network(item.image),
                  footer: Text(item.price.toString()),
                  ));
               }),
             itemCount: CatalogModel.items.length,)
            
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      
      drawer: MyDrawer(), //corner me three lines
    );
  }
}
