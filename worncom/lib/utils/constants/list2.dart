class CategoryModelClass {
  CategoryModelClass(this.catName, this.iconurl);

  final String catName;
  final String iconurl;
}

List<CategoryModelClass> categoryData = [
  CategoryModelClass(
    "Cosmetics",
    "assets/icons/categories/icons8-cosmetics-64.png",
  ),
  CategoryModelClass(
    "Chairs",
    "assets/icons/categories/icons8-dining-chair-64.png",
  ),
  CategoryModelClass(
    "Uniforms",
    "assets/icons/categories/icons8-school-uniform-64.png",
  ),
  CategoryModelClass(
    "Laptops",
    "assets/icons/categories/icons8-smartphone-64.png",
  ),
  CategoryModelClass(
    "Shoes",
    "assets/icons/categories/icons8-shoes-64.png", // Fixed typo
  ),
  CategoryModelClass(
    "Phones",
    "assets/icons/categories/icons8-smartphone-64.png",
  ),
  CategoryModelClass(
    "Toys",
    "assets/icons/categories/icons8-wooden-toy-car-50.png",
  ),
];
