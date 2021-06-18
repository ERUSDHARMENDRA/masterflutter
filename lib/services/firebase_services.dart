import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:masterflutter/models/products.dart';

class FirebaseServices {
  CollectionReference products =
      FirebaseFirestore.instance.collection('products');

  Future<void> saveProduct(Product product) async {
    products.doc(product.productId).set(product.toMap());
  }
}
