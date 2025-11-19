import 'package:flutter/material.dart';
import 'package:taij_assingment/models/model.dart';
import 'package:taij_assingment/show_item.dart';

class product_screen extends StatefulWidget {
  const product_screen({super.key});

  @override
  State<product_screen> createState() => _product_screenState();
}

class _product_screenState extends State<product_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: catalogitems.item.length,itemBuilder: (context, index){
        return Myitem(itemss: catalogitems.item[index]);
      }),
    );
  }
}