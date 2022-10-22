import 'package:classic/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:classic/models/catalog.dart';
import 'package:classic/widgets/item_widget.dart';

class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({required key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       elevation: 5.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
