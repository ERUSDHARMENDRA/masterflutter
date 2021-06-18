import 'package:flutter/material.dart';
import 'package:masterflutter/provider/product_provider.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class EditProduct extends StatefulWidget {
  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Edit Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: prefer_const_constructors
              child: TextField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                  ),
                  onChanged: (value) {
                    productProvider.changeName(value);
                  }),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: prefer_const_constructors
              child: TextField(
                keyboardType: TextInputType.number,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: 'Product Price',
                ),
                onChanged: (value) {
                  productProvider.changePrice(value);
                },
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            ElevatedButton(
                onPressed: () {
                  productProvider.saveProduct();
                  Navigator.of(context).pop;
                },
                // ignore: prefer_const_constructors
                child: Text('Save')),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {},
              color: Colors.red,
              // ignore: prefer_const_constructors
              child: Text(
                'Delete',
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
