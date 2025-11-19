import 'package:flutter/material.dart';
import 'package:taij_assingment/models/model.dart';

class product_details extends StatelessWidget {
  const product_details({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    
   
    if (args == null || args is! Item) {
      return Scaffold(
        appBar: AppBar(title: Text("Product Details")),
        body: Center(child: Text("⚠ No product found")),
      );
    }

    final Item product = args;

    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(product.image, height: 250, fit: BoxFit.cover),
              const SizedBox(height: 20),
              Text(product.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(product.desc,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700])),
              const SizedBox(height: 20),
              Text("\$${product.price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Buy Now", style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
