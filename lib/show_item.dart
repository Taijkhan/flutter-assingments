import 'package:flutter/material.dart';
import 'package:taij_assingment/models/model.dart';

class Myitem extends StatelessWidget {
      final Item itemss;
  const Myitem({super.key, required this.itemss});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(itemss.image),
        title: Text(" ${itemss.title}"),
        subtitle: Text(itemss.desc),
        trailing: Text("\$ ${itemss.price}"),
        onTap: (){
        Navigator.pushNamed(context, '/detail',
        arguments: itemss);
        },
      ),
    );
  }
}