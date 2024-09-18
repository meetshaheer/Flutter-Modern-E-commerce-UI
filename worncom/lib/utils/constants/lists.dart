

import 'dart:math';

class productModelClass {
  const productModelClass(
    this.imaegurl,
    this.discounPercentage,
    this.productTitle,
    this.brand,
    this.price,
  );

  final String imaegurl;
  final String discounPercentage;
  final String productTitle;
  final String brand;
  final String price;
}

int productDiscount() {
  int randomdis = Random().nextInt(36) + 10;
  return randomdis;
}

int productPrices() {
  int randomprice = Random().nextInt(3600) + 1000;
  return randomprice;
}

List productsData = [
  productModelClass(
    "assets/images/products/nike-shoes.png",
    productDiscount().toString(),
    "Nike Branded Sport Shoe",
    "Nike",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/product-jacket.png",
    productDiscount().toString(),
    "Leather Bomber Jacket",
    "Addidas",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/nike-shoes.png",
    productDiscount().toString(),
    "Nike Branded Sport Shoe",
    "Nike",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/acer_laptop_1.png",
    productDiscount().toString(),
    "Lenovo Gaming Laptop",
    "Lenovo",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/acer_laptop_2.png",
    productDiscount().toString(),
    "Lenovo Series 9",
    "Lenevo",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/acer_laptop_3.png",
    productDiscount().toString(),
    "Lenovo Core i-6",
    "Lenovo",
    productPrices().toString(),
  ),
  productModelClass(
    "assets/images/products/acer_laptop_4.png",
    productDiscount().toString(),
    "Lenovo Starter Series",
    "Lenovo",
    productPrices().toString(),
  ),
];
