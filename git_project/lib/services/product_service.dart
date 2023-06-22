import 'dart:convert';

import 'package:git_project/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<ProductModel>> getProductData() async {
    // List<ProductModel> allProducts = [];
    const url = "https://fakestoreapi.com/products";
    final uri = Uri.parse(url);
    final responce = await http.get(uri);

    print("responce ==>>>> ${responce.body}");

    if (responce.statusCode == 200) {
      final json = jsonDecode(responce.body) as List;
      final allProducts = json.map((e) {
        return ProductModel(
          id: e["id"],
          image: e["image"],
          title: e["title"],
          price: e["price"],
          description: e["description"],
          category: e["category"],
          rating: e["rating"],
        );
      }).toList();
      return allProducts;
    }
    return [];
  }
}
