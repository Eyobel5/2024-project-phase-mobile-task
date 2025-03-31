import 'dart:io';
import 'package:product_2/product_2.dart'; // Import the product manager and product classes

void main() {
  final productManager = ProductManager();

  while (true) {
    print("\n--- E-commerce Product Management ---");
    print("1. Add Product");
    print("2. View All Products");
    print("3. View Product");
    print("4. Edit Product");
    print("5. Delete Product");
    print("6. Exit");
    print("Enter your choice:");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addProduct(productManager);
        break;
      case '2':
        productManager.viewAllProducts();
        break;
      case '3':
        viewProduct(productManager);
        break;
      case '4':
        editProduct(productManager);
        break;
      case '5':
        deleteProduct(productManager);
        break;
      case '6':
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}

void addProduct(ProductManager manager) {
  print("Enter product name:");
  String? name = stdin.readLineSync();
  print("Enter product description:");
  String? description = stdin.readLineSync();
  print("Enter product price:");
  double? price = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  if (name != null && description != null && price > 0) {
    final product = Product(name: name, description: description, price: price);
    manager.addProduct(product);
    print("Product added successfully.");
  } else {
    print("Invalid input. Product not added.");
  }
}

void viewProduct(ProductManager manager) {
  print("Enter product name to view:");
  String? name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    manager.viewProduct(name);
  }
}

void deleteProduct(ProductManager manager) {
  print("Enter product name to delete:");
  String? name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    manager.deleteProduct(name);
    print("Product deleted successfully.");
  } else {
    print("Invalid input. Product not deleted.");
  }
}

void editProduct(ProductManager manager) {
  print("Enter product name to edit:");
  String? name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    print("Enter new product name (leave empty to skip):");
  }
}
