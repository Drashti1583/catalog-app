// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({
    Key? key,
    required this.item,
    // ignore: unnecessary_null_comparison
  })  : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.2,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
         trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple
        ),),

      ),
    );
  }
}
