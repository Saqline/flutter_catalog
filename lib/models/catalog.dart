class CatalogModel {
  static final items = [
    Item(id: 1, name: 'Nur', desc: 'Good', price: 50, color: 'red')
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color});
}
