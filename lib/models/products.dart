import 'dart:convert';

class Product {
  final String productId;
  final String name;
  final double price;

  Product({
    required this.productId,
    required this.name,
    required this.price,
  });

  Product copyWith({
    String? productId,
    String? name,
    double? price,
  }) {
    return Product(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'name': name,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productId: map['productId'],
      name: map['name'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() => 'Product(productId: $productId, name: $name, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.productId == productId &&
      other.name == name &&
      other.price == price;
  }

  @override
  int get hashCode => productId.hashCode ^ name.hashCode ^ price.hashCode;
}
