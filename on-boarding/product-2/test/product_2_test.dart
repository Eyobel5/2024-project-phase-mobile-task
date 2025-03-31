import 'package:test/test.dart';
import 'package:product_2/product_2.dart';

void main() {
  group('Product Tests', () {
    test('Create a Product', () {
      final product =
          Product(name: 'Laptop', description: 'Gaming Laptop', price: 1200.00);
      expect(product.productName, 'Laptop');
      expect(product.productDescription, 'Gaming Laptop');
      expect(product.productPrice, 1200.00);
    });

    test('Add Product to ProductManager', () {
      final manager = ProductManager();
      final product =
          Product(name: 'Laptop', description: 'Gaming Laptop', price: 1200.00);
      manager.addProduct(product);
      expect(manager.products.length, 1);
    });

    test('View All Products', () {
      final manager = ProductManager();
      final product1 =
          Product(name: 'Laptop', description: 'Gaming Laptop', price: 1200.00);
      final product2 =
          Product(name: 'Phone', description: 'Smartphone', price: 800.00);
      manager.addProduct(product1);
      manager.addProduct(product2);

      manager.viewAllProducts(); // Output will show the two products
    });

    test('Delete Product', () {
      final manager = ProductManager();
      final product =
          Product(name: 'Laptop', description: 'Gaming Laptop', price: 1200.00);
      manager.addProduct(product);
      manager.deleteProduct('Laptop');
      expect(manager.products.isEmpty, true);
    });
  });
}
