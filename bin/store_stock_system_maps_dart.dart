import 'dart:io';

import 'package:store_stock_system_maps_dart/store_stock_system_maps_dart.dart' as store_stock_system_maps_dart;

void main(List<String> arguments) {
  Map storeProducts = {};
while(true){
  print('Welcome to our products register System');
  print('Enter product Name:');
  String prdctname=stdin.readLineSync()!;
  if (prdctname == 'e') {
      break;
    }
  print('Enter product Category:');
  String prdctCat=stdin.readLineSync()!;
  print('Enter product brand:');
  String? prdctBrand=stdin.readLineSync()!;
  print("Enter product price:");
  double prdctprice = double.parse(stdin.readLineSync()!);
  Map regProduct={
    'name':prdctname,
    'category':prdctCat,
    'brand':prdctBrand,
    'price':prdctprice
  };
  storeProducts[prdctname]=regProduct;
}
print("\nStore Products:");
  storeProducts.forEach((prdctname, regProduct) {
    print("Product: ${regProduct['name']}");
    print("Category: ${regProduct['category']}");
    print("Brand: ${regProduct['brand']}");
    print("Price: ${regProduct['price']}");
    print("-------------------------");
  });

}
