// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:zeus_app/manClothes/sominam.dart';

class CartListModel {
  final SoMiNam product;
  final int quantity;
  const CartListModel({
    required this.product,
    required this.quantity,
  });
  

  CartListModel copyWith({
    SoMiNam? product,
    int? quantity,
  }) {
    return CartListModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory CartListModel.fromMap(Map<String, dynamic> map) {
    return CartListModel(
      product: SoMiNam.fromMap((map["product"]?? Map<String,dynamic>.from({})) as Map<String,dynamic>),
      quantity: (map["quantity"] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartListModel.fromJson(String source) => CartListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartListModel(product: $product, quantity: $quantity)';

  @override
  bool operator ==(covariant CartListModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.product == product &&
      other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;
}
