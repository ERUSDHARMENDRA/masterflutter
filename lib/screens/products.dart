import 'package:flutter/material.dart';
import 'package:masterflutter/screens/edit_products.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Products'),
        actions: [
          IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProduct()));
              })
        ],
      ),
    );
  }
}
