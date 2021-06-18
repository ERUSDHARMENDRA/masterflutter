import 'package:flutter/cupertino.dart';
import 'package:masterflutter/models/products.dart';
import 'package:masterflutter/services/firebase_services.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  FirebaseServices _services = FirebaseServices();
  late String _name;
  late double _price;
  // ignore: unused_field
  late String _productId;
  var uuid = Uuid();

  //getters
  String get name => _name;
  double get price => _price;

  //setters
  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changePrice(String value) {
    _price = double.parse(value);
    notifyListeners();
  }

  saveProduct() {
    var newProduct = Product(productId: uuid.v4(), name: name, price: price);
    _services.saveProduct(newProduct);
  }
}
