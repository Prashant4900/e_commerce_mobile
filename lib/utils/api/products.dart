import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:e_commerce_mobile/models/products.dart';

class ProductProvider with ChangeNotifier {
  ProductProvider() {
    this.fetchTask();
  }

  List<Product> _product = [];

  List<Product> get product {
    return [..._product];
  }

  fetchTask() async {
    final productURL = 'http://10.0.2.2:8000/api/product/';
    final response = await http.get(productURL);
    if (response.statusCode == 200) {
      var productData = json.decode(response.body) as List;
      _product =
          productData.map<Product>((json) => Product.fromJson(json)).toList();
    } else {
      print('Error in Product Api path: util/api/product.dart');
    }
  }
}
