import 'package:flutter/material.dart';
import 'package:git_project/models/product_model.dart';
import 'package:git_project/services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  ProductService productService = ProductService();
  bool isLoading = false;
  List<ProductModel> _allProducts = [];
  List<ProductModel> get allProducts => _allProducts;

  Future<void> newProList() async {
    isLoading = true;
    notifyListeners();

    final responce = await productService.getProductData();
    _allProducts = responce;
    isLoading = false;
    notifyListeners();
  }
}
