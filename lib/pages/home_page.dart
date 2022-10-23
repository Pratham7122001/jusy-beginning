import 'package:classic/models/catalog.dart';
import 'package:classic/widgets/drawer.dart';
import 'package:classic/widgets/item_widget.dart';
import 'package:classic/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //material library ke wajah se jo bhi ui dikh raha hai jaise poshakh center me hai and bar ka color blue hai tjis is all bcoz materila library
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'package:classic/widgets/themes.dart';

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
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate( 4, (index) => CatalogModel.items[0]); // create copy of items if we donot have more items to check ui or anything
    //widget is a component

    return Scaffold(
      //replace material with scaffold-->>is a widget where their will be head,foot body for interface
      /*   appBar: AppBar(
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
      
      drawer: MyDrawer(), //corner me three lines*/

      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              "Poshakh-the Clothing hub"
                  .text
                  .xl4
                  .bold
                  .color(MyTheme.darkblueColor)
                  .make(),
              "~trendy wears".text.xl.make(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().flexible()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(key: key, catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.network(catalog.image).box.p12.make().w32(context),
          Expanded(
              key: key,
              child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     catalog.name.text.extraBold.make().p12(),
                     catalog.desc.text.xs.italic.semiBold.make().p0(),
                    // 10.heightBox, height se inche lene ke liye for button
                    ButtonBar(
                      buttonPadding: Vx.mOnly(right: 13),//right se padding
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "\$${catalog.price}".text.bold.make(),
                        ElevatedButton(
                          //style: ,bhi use kar sakte
                          onPressed: () {},
                          child: "Buy".text.make(),
                        )
                      ],
                    ),

                    //catalog.name.text.bold.make().p12(),
                    // catalog.desc.text.make().p12(),
                    //"\$${catalog.price}".text.bold.make().w20(context),
                    // ButtonBar(
                    //  alignment:MainAxisAlignment.,
                    //  children: [
                    //    "\$${catalog.price}".text.bold.make(),
                    //      ElevatedButton(
                    //       onPressed:(){},
                    //       child: "Buy".text.make(),)

                    //   ],
                    // )
                  ],
                ),
              )
        ],
      ),
    )
        .color(Color.fromARGB(48, 62, 30, 104))
        .rounded
        .square(130)
        
        .make()
        .py12();

    //container and vxbox is same
  }
}
