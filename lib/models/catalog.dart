class CatalogModel {
   static final items = [
    Item(
      id: 1,
      name: "Tshirt",
      desc: "XYZ",
      price: 123,
      color: "black",
      image:"https://th.bing.com/th/id/OIP._z6GvfuYgmgAYM7y41bp4wHaKu?pid=ImgDet&rs=1"
             ),
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
