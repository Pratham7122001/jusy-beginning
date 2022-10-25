import 'package:classic/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class homedetailpage extends StatelessWidget {
  //const homedetailpage({super.key});
  final Item catalog;

  const homedetailpage({required key, required this.catalog})
      : assert(catalog != null); 
       //super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
         buttonPadding: Vx.mOnly(right: 13), //right se padding
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl2.make(),
                    ElevatedButton(
                      //style: ,bhi use kar sakte
                      onPressed: () {},
                      child: "Buy".text.make(),
                    )
                  ],
      ),
      //appBar: AppBar()
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Image.network(catalog.image).h40(context).centered(),//either height or padding
            Expanded(child: VxArc(
              height: 10.0,
              arcType: VxArcType.CONVEX,
              edge: VxEdge.TOP,
              child: Container(
                color: Color.fromARGB(134, 175, 174, 175),width: context.screenWidth,
                child:Column(
                  children: [
                    catalog.name.text.extraBold.xl4.make().p12(),
                catalog.desc.text.italic.semiBold.xl2.make().p0(),
                catalog.color.text.semiBold.xl2.make().p12(),
                  ],
                ),
                
                ),
            ))
          ]
        ),
      ),
    );
  }
}
