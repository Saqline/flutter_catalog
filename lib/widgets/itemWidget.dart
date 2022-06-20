import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Color.fromARGB(221, 170, 10, 10),
      child: ListTile(
        onTap: () {
          print('${item.name} pressed');
        },
        title: Text(item.name),
        //leading: ,
        subtitle: Text(item.desc),
        trailing: Text(
          '\$${item.price}',
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
