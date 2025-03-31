// lib/product_2.dart

import 'dart:io';

// Product class
class Product {
  String name;
  String description;
  double price;

  Product({required this.name, required this.description, required this.price});

  // Getters and Setters
  String get productName => name;
  String get productDescription => description;
  double get productPrice => price;

  set setName(String name) => this.name = name;
  set setDescription(String description) => this.description = description;
  set setPrice(double price) => this.price = price;
}

// ProductManager class
class ProductManager {
  List<Product> products = [];

  // Add a new product
  void addProduct(Product product) {
    products.add(product);
  }

  // View all products
  void viewAllProducts() {
    if (products.isEmpty) {
      print("No products available.");
      return;
    }
    for (var product in products) {
      print("\nProduct: ${product.productName}");
      print("Description: ${product.productDescription}");
      print("Price: \$${product.productPrice}");
    }
  }

  // View a specific product
  void viewProduct(String name) {
    var found = false;
    for (var product in products) {
      if (product.productName == name) {
        found = true;
        print("\nProduct: ${product.productName}");
        print("Description: ${product.productDescription}");
        print("Price: \$${product.productPrice}");
        break;
      }
    }
    if (!found) {
      print("Product not found.");
    }
  }

  // Edit a product
  void editProduct(String name,
      {String? newName, String? newDescription, double? newPrice}) {
    for (var product in products) {
      if (product.productName == name) {
        product.setName = newName ?? product.productName;
        product.setDescription = newDescription ?? product.productDescription;
        product.setPrice = newPrice ?? product.productPrice;
        print("\nProduct updated.");
        return;
      }
    }
    print("Product not found.");
  }

  // Delete a product
  void deleteProduct(String name) {
    products.removeWhere((product) => product.productName == name);
    print("\nProduct deleted.");
  }
}
